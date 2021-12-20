Module GenETFM
    USE IntrType, ONLY: sdk, sik
    USE XsecM, ONLY: xstrf, xsaf, xsnff, xschif, xsscat
    USE SerpentSolutionM, ONLY: serpflux, serpcurns, serp_kinf
    USE GeomM
    USE ItrcntlM
    USE ParamM, ONLY: mg
    USE IOVarM, ONLY: output_unit
    USE LUDeflateM, ONLY: LUDeflateInitial, LUDeflate
    
    IMPLICIT NONE
    REAL(sdk), ALLOCATABLE :: F(:), J(:,:), x(:), leakage(:,:,:),test_vector(:)
    REAL(sdk)              :: absF
    REAL(sdk), PARAMETER   :: two_third = 2.0/3.0
    REAL(sdk), PARAMETER   :: xstr_min = 1E-5
    
CONTAINS
    
    SUBROUTINE InitialGenETF
    IMPLICIT NONE
    
        ALLOCATE(F(nxy))
        ALLOCATE(J(nxy,nxy))
        ALLOCATE(x(nxy))
        ALLOCATE(test_vector(nxy))
        ALLOCATE(leakage(mg,nxy,nz))
        CALL LUDeflateInitial(nxy)
        tol = epseig

    END SUBROUTINE InitialGenETF
    
    SUBROUTINE GenETFDriver
    IMPLICIT NONE
        
        INTEGER(sik) :: ig, iz, ixy
        REAL(sdk)    :: ori_xstrf(mg,nxy,nz),delta_xstr(mg,nxy,nz)
        
        ! Enforce Neutron balance by changing abs XS
        DO iz = 1,nz
            DO ixy = 1,nxy
                CALL UpdateXSAb(ixy,iz)
            END DO
        END DO
        
        ori_xstrf = xstrf
        
        DO iz=1,nz
            DO ig = 1,mg
                write(output_unit,*)'Newton Solver for group', ig, 'axial plane', iz
                CALL NewtonRun(ig,iz)
            END DO
        END DO
        
        delta_xstr = (xstrf-ori_xstrf)/ori_xstrf
        WRITE(output_unit,*) " "
        WRITE(output_unit,*) "Relative Transport XS changes"
        WRITE(output_unit,"(2F10.2)") delta_xstr
        WRITE(output_unit,*) " "
    
    END SUBROUTINE GenETFDriver
    
    SUBROUTINE UpdateXSAb(ixy,iz)
    IMPLICIT NONE
    
        
        INTEGER(sik), INTENT(IN) :: ixy,iz
        
        INTEGER(sik)             :: ig,fg
        REAL(sdk)                :: lam, fiss, src, maxabsa, sigxab(mg)
        LOGICAL                  :: positive
    
        ! change absorption cross section to enforce neutron balance
        
        if(serp_kinf(ixy,iz) .ne. 0)then
           lam=1/serp_kinf(ixy,iz)
        else
           lam=0.0
        endif
        
        fiss=0
        do ig=1,mg
           fiss=fiss+serpflux(ig,ixy,iz)*xsnff(ig,ixy,iz)
        enddo
        fiss=fiss*lam
            
        do ig=1,mg
           src = fiss*xschif(ig,ixy,iz) - Leakage(ig,ixy,iz)/volnode(ixy,iz)
           do fg=1,mg
              src=src+serpflux(fg,ixy,iz)*xsscat(fg,ig,ixy,iz)-serpflux(ig,ixy,iz)*xsscat(ig,fg,ixy,iz)
           enddo
           sigxab(ig)=src/serpflux(ig,ixy,iz)
        enddo
        
        ! Check to see if values are positive from ABS perturbation\
        positive = .True.
        maxabsa=0
        do ig=1,mg
           src=dabs(1-sigxab(ig)/xsaf(ig,ixy,iz))
           IF(maxabsa<src)maxabsa=src
           IF (sigxab(ig).LT. 0.0) then
              !         sigxab(g) = 1.0e-8
              positive = .FALSE.
           END IF
        enddo
        write(output_unit,*)'Updating Abs XS for node', ixy, 'axial plane', iz
        IF (.NOT. positive) write(output_unit,*)'**********Warning - Negative Abs XS produced in balance calculation'
        IF (maxabsa>0.1) THEN
           write(output_unit,*)'**********Warning - too big  Abs XS change:',maxabsa
        ELSE
           write(output_unit,*)'maximum Abs XS change:',maxabsa
        ENDIF
        ! use perturbed values      
        xsaf(:,ixy,iz) = sigxab(:)
    
    END SUBROUTINE UpdateXSAb
    
    SUBROUTINE NewtonRun(ig,iz)
    IMPLICIT NONE
    
        INTEGER(sik), INTENT(IN) :: ig,iz
        INTEGER(sik) :: ixy, it,it_bt
        REAL(sdk) :: prev_absF
        LOGICAL   :: lbacktrack
        REAL(sdk)    :: ori_xstrf(mg,nxy,nz),delta_xstr(mg,nxy,nz)
    
        ori_xstrf = xstrf
        ! initial value
        CALL FormFunctionF(ig,iz)
        CALL AbsFCal 
        it = 0
        it_bt = 0
        lbacktrack = .True.
        ! iteration
        DO WHILE(absF>tol)
            it = it + 1
            IF (it>maxit) EXIT
            CALL FormJacobian(ig,iz)
            
            !WRITE(output_unit,*) 'F'
            !DO ixy = 1,nxy
            !    WRITE(output_unit,"(10ES12.4)") F(ixy)
            !END DO
            !WRITE(output_unit,*) 'J'
            !DO ixy = 1,nxy
            !    WRITE(output_unit,"(10ES12.4)") J(ixy,:)
            !END DO
            ! J = TRANSPOSE(J)
            ! CALL GaussElim(x,J,F,nxy) 
            ! CALL gauss_2(x,J,F,nxy)
            ! Use deflated LU decomposition to solve the linear system
            
            CALL LUDeflate(J,x,F)
            
            !WRITE(output_unit,*) 'x'
            !DO ixy = 1,nxy
            !    WRITE(output_unit,"(10ES12.4)") x(ixy)
            !END DO
            !
            !WRITE(output_unit,*) 'residual, |Jx-F|'
            !CALL MatVecMult(test_vector,J,x,nxy)
            !DO ixy = 1,nxy
            !    WRITE(output_unit,"(10ES12.4)") abs(test_vector(ixy)-F(ixy))
            !END DO   
             
            CALL UpdateXSTr(ig,iz,x)   
            prev_absF = absF
            
            IF (lbacktrack) THEN
                CALL quad_bakctrack(ig, iz, prev_absF, it_bt)
            ELSE
                CALL FormFunctionF(ig,iz)
                CALL AbsFCal
            END IF
               
            WRITE(output_unit,*) 'Iteration number ', it, ' |F| = ',absF
            PRINT *, 'Iteration number ', it
            delta_xstr = (xstrf-ori_xstrf)/ori_xstrf
            !WRITE(output_unit,*) " "
            !WRITE(output_unit,*) "Relative Transport XS changes"
            !WRITE(output_unit,"(2F10.2)") delta_xstr
            !WRITE(output_unit,*) " "
        END DO

    END SUBROUTINE NewtonRun
    
    SUBROUTINE FormFunctionF(ig,iz)
    IMPLICIT NONE
        
        INTEGER(sik), INTENT(IN) :: ig,iz
        INTEGER(sik) :: ixy, is, ineigh
        REAL(sdk)    :: hom_cur, hom_leak, hn, hc
        
        DO ixy=1,nxy
            hom_leak = 0.0
            DO is=1,ns-2
                ineigh = rad_neigh(ixy,is)
                IF (ineigh .NE. 0)THEN
                    IF (MOD(is,2) == 1) THEN
                        hc = hx(ixy)
                        hn = hx(ineigh)
                    ELSE
                        hc = hy(ixy)
                        hn = hy(ineigh)
                    END IF
                    hom_cur = two_third * (serpflux(ig,ixy,iz) - serpflux(ig,ineigh,iz)) / (xstrf(ig,ixy,iz)*hc + xstrf(ig,ineigh,iz)*hn)
                    hom_leak = hom_leak + hom_cur*area(ixy,is,iz)
                END IF
            END DO
            F(ixy) = hom_leak - leakage(ig,ixy,iz)
        END DO              
            
    END SUBROUTINE FormFunctionF
    
    SUBROUTINE FormJacobian(ig,iz)
        IMPLICIT NONE
        
        INTEGER(sik), INTENT(IN) :: ig,iz
        INTEGER(sik) :: ixy, is, ineigh
        REAL(sdk)    :: Jii_num, Jii_den, Jij_num, sumJii, hc, hn
        
        J = 0.0
        DO ixy=1,nxy
            sumJii = 0.0
            DO is=1,ns-2
                ineigh = rad_neigh(ixy,is)
                IF (ineigh .NE. 0)THEN
                    IF (MOD(is,2) == 1) THEN
                        hc = hx(ixy)
                        hn = hx(ineigh)
                    ELSE
                        hc = hy(ixy)
                        hn = hy(ineigh)
                    END IF
                    Jii_num =  hc * (serpflux(ig,ixy,iz) - serpflux(ig,ineigh,iz)) * area(ixy,is,iz)
                    Jii_den = (xstrf(ig,ixy,iz)*hc + xstrf(ig,ineigh,iz)*hn) ** 2
                    Jij_num = hn * (serpflux(ig,ixy,iz) - serpflux(ig,ineigh,iz)) * area(ixy,is,iz)
                    J(ixy,ineigh) = -two_third*Jij_num/Jii_den
                    sumJii = sumJii + Jii_num/Jii_den
               END IF
            END DO
            J(ixy,ixy) = -two_third*sumJii
        END DO      
        
    END SUBROUTINE FormJacobian
    
    SUBROUTINE GaussElim(sol,matrix,constant,dim)    
    
        IMPLICIT NONE
        
        INTEGER(sik), INTENT(IN) :: dim
        REAL(sdk), INTENT(IN) :: matrix(dim,dim), constant(dim)
        REAL(sdk), INTENT(OUT) :: sol(dim,1)
        
        REAL(8) :: A(dim,dim),b(dim,1)  
        
        INTEGER :: kk,mm,nn,jj
        REAL(8) :: fct

        A = matrix
        b(:,1) = constant
        sol = b
        
   ! Forward elimination
        DO kk = 1,dim-1
            DO mm = kk+1,dim
                fct = A(mm,kk) / A(kk,kk)
                DO nn = kk,dim
                   A(mm,nn) = A(mm,nn) - fct * A(kk,nn)
                ENDDO
                sol(mm,1) = sol(mm,1) - fct * sol(kk,1)                
            ENDDO
        ENDDO
   ! Back Substitution
        DO kk=dim,1,-1
           DO jj=(kk + 1),dim
               sol(kk,1) = sol(kk,1) - A(kk,jj) * sol(jj,1)
           END DO
           sol(kk,1) = sol(kk,1)/A(kk,kk)
           A(kk,kk) = A(kk,kk)/A(kk,kk)               
        END DO    
            
    END SUBROUTINE GaussElim
    
    subroutine gauss_2(x,a,b,n)
    !===========================================================
    ! Solutions to a system of linear equations A*x=b
    ! Method: Gauss elimination (with scaling and pivoting)
    ! Alex G. (November 2009)
    !-----------------------------------------------------------
    ! input ...
    ! a(n,n) - array of coefficients for matrix A
    ! b(n)   - array of the right hand coefficients b
    ! n      - number of equations (size of matrix A)
    ! output ...
    ! x(n)   - solutions
    ! coments ...
    ! the original arrays a(n,n) and b(n) will be destroyed 
    ! during the calculation
    !===========================================================
    implicit none 
    integer n
    double precision a(n,n), b(n), x(n)
    double precision s(n)
    double precision c, pivot, store
    integer i, j, k, l
    
    ! step 1: begin forward elimination
    do k=1, n-1
    
    ! step 2: "scaling"
    ! s(i) will have the largest element from row i 
      do i=k,n                       ! loop over rows
        s(i) = 0.0
        do j=k,n                    ! loop over elements of row i
          s(i) = max(s(i),abs(a(i,j)))
        end do
      end do
    
    ! step 3: "pivoting 1" 
    ! find a row with the largest pivoting element
      pivot = abs(a(k,k)/s(k))
      l = k
      do j=k+1,n
        if(abs(a(j,k)/s(j)) > pivot) then
          pivot = abs(a(j,k)/s(j))
          l = j
        end if
      end do
    
    ! Check if the system has a sigular matrix
      if(pivot == 0.0) then
        write(*,*) ' The matrix is sigular '
        return
      end if
    
    ! step 4: "pivoting 2" interchange rows k and l (if needed)
    if (l /= k) then
      do j=k,n
         store = a(k,j)
         a(k,j) = a(l,j)
         a(l,j) = store
      end do
      store = b(k)
      b(k) = b(l)
      b(l) = store
    end if
    
    ! step 5: the elimination (after scaling and pivoting)
       do i=k+1,n
          c=a(i,k)/a(k,k)
          a(i,k) = 0.0
          b(i)=b(i)- c*b(k)
          do j=k+1,n
             a(i,j) = a(i,j)-c*a(k,j)
          end do
       end do
    end do
    
    ! step 6: back substiturion 
    x(n) = b(n)/a(n,n)
    do i=n-1,1,-1
       c=0.0
       do j=i+1,n
         c= c + a(i,j)*x(j)
       end do 
       x(i) = (b(i)- c)/a(i,i)
    end do
    
    end subroutine gauss_2

    
    SUBROUTINE UpdateXSTr(ig,iz,x)
    IMPLICIT NONE
        
        INTEGER(sik), INTENT(IN) :: ig,iz
        REAL(sdk), INTENT(IN) :: x(nxy)
        INTEGER(sik) :: ixy
    
        DO ixy=1,nxy
            xstrf(ig,ixy,iz) = xstrf(ig,ixy,iz) - x(ixy)
            !IF (xstrf(ig,ixy,iz) < xstr_min) xstrf(ig,ixy,iz) = xstr_min
        END DO
       
    END SUBROUTINE UpdateXSTr
    
    SUBROUTINE AbsFCal
    IMPLICIT NONE
    
        INTEGER(sik) :: ixy
        REAL(sdk)    :: L2_norm
        
        L2_norm = 0.0
        DO ixy=1,nxy
            L2_norm = L2_norm + F(ixy)*F(ixy)
        END DO
        absF = SQRT(L2_norm)
    
    END SUBROUTINE AbsFCal
    
    SUBROUTINE MatVecMult(Mv,M,v,dim)
    IMPLICIT NONE
    
        INTEGER(sik), INTENT(IN) :: dim
        REAL(sdk), INTENT(IN) :: M(dim,dim), v(dim)
        REAL(sdk), INTENT(OUT) :: Mv(dim)
        
        INTEGER(sik) ::i, j
        
        DO i = 1,dim
            Mv(i) = 0.0
            DO j = 1,dim
                Mv(i) = Mv(i) + M(i,j)*v(j)
            END DO
        END DO          
        
    END SUBROUTINE MatVecMult
    
    SUBROUTINE quad_bakctrack(ig, iz, prev_absF, i)
    IMPLICIT NONE
        
        INTEGER(sik), INTENT(IN) :: ig, iz
        REAL(sdk), INTENT(IN) :: prev_absF
        
        REAL(sdk) :: lamb, g0, g1, lamb1, lambq, xstrf_prev(mg,nxy,nz)
        INTEGER(sik) :: i, it
        
        
        ! initialize
        CALL FormFunctionF(ig,iz)
        CALL AbsFCal
        lamb = 1.0
        it = 0
        xstrf_prev = xstrf
        DO WHILE (absF>prev_absF)
            i = i + 1
            it = it + 1
            IF (it>maxit) EXIT
            IF (lamb<1E-15) EXIT
            lamb1 = lamb
            g0 = prev_absF
            g1 = absF
            !lambq = 0.5*lamb1 ! linear
            lambq = (lamb1**2) / (2*lamb1 - 1 + g1/g0) ! quadratic
            lamb = lambq
            xstrf = xstrf_prev
            CALL UpdateXSTr(ig,iz,lamb*x)   
            CALL FormFunctionF(ig,iz)
            CALL AbsFCal
            ! WRITE(output_unit,*) 'Backtracking number ', i, ' lambda = ', lamb
        END DO
    END SUBROUTINE quad_bakctrack
    
END Module GenETFM
    
    
    
    