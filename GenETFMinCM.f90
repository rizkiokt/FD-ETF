Module GenETFMinCM
    USE IntrType, ONLY: sdk, sik
    USE XsecM, ONLY: xstrf, xsaf, xsnff, xschif, xsscat
    USE SerpentSolutionM, ONLY: serpflux, serpcurns, serp_kinf
    USE GeomM
    USE ItrcntlM
    USE ParamM, ONLY: mg
    USE IOVarM, ONLY: output_unit
    USE LUDeflateM, ONLY: LUDeflateInitial, LUDeflate
    
    IMPLICIT NONE
    REAL(sdk), ALLOCATABLE :: vector(:), Matrix(:,:), F(:), gradF(:,:),grad2fk(:,:), x(:), dx(:), leakage(:,:,:),test_vector(:)
    REAL(sdk), ALLOCATABLE :: Mat1(:,:), Mat2(:,:)
    REAL(sdk), ALLOCATABLE :: gradpk(:), grad2pk(:,:), p(:)
    REAL(sdk)              :: absF, tol, wk, sump, sumf
    REAL(sdk), PARAMETER   :: two_third = 2.0/3.0, xmin = 1E-6, xmax = 1E4, alpha_L = 10.0, alpha_U = 1.0, wmax = 1.0E10
    INTEGER(sik), PARAMETER :: maxit = 100, penalty_opt = 2
    
CONTAINS
    
    SUBROUTINE InitialGenETF
    IMPLICIT NONE
    
        ALLOCATE(F(nxy),vector(nxy))
        ALLOCATE(gradF(nxy,nxy),grad2fk(nxy,nxy), Matrix(nxy,nxy))
        ALLOCATE(x(nxy),dx(nxy))
        ALLOCATE(test_vector(nxy))
        ALLOCATE(leakage(mg,nxy,nz))
        ALLOCATE(Mat1(nxy,nxy),Mat2(nxy,nxy))
        ALLOCATE(p(nxy),gradpk(nxy),grad2pk(nxy,nxy))
        CALL LUDeflateInitial(nxy)
        tol = epseig
        x = 1.0

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
                !x = 1.0
                write(output_unit,*)'Newton Solver for group', ig, 'axial plane', iz
                CALL NewtonRun(ig,iz)
                CALL UpdateXStr(ig,iz,x)
            END DO
        END DO
        
        delta_xstr = (xstrf-ori_xstrf)/ori_xstrf
        !WRITE(output_unit,*) " "
        !WRITE(output_unit,*) "Relative Transport XS changes"
        !WRITE(output_unit,"(2F10.3)") delta_xstr
        !WRITE(output_unit,*) " "
        
        WRITE(output_unit,*) " "
        WRITE(output_unit,*) "x = ETF/ori_xstrf"
        WRITE(output_unit,"(2F10.4)") xstrf/ori_xstrf
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
        REAL(sdk) :: prev_absF, prev_x(nxy)
        LOGICAL   :: lbacktrack,lupdtw
        CHARACTER(len=100) :: format_write
    
        ! initial value
        x = 1.0
        wk = 1.0E-5
        prev_absF = 1.0
        CALL FormFunctionp(ig,iz)
        CALL FormVector(ig,iz)
        CALL AbsFCal 
        it = 0
        it_bt = 0
        lbacktrack = .TRUE.
        format_write = '(A20,I3.3,A10,ES12.5,A10,ES12.5,A10,ES12.5,A10,ES12.5)'
        WRITE(output_unit,format_write) 'Iteration number ', it, ' fo = ', sumf, ' fp = ',sump/wk, ' wk = ',wk, ' objF = ', absF
        PRINT format_write, 'Iteration number ', it, ' fo = ', sumf, ' fp = ',sump/wk, ' wk = ',wk, ' objF = ', absF
        ! iteration
        DO WHILE(absF>tol)
            it = it + 1
            IF (it>maxit) EXIT
            CALL FormMatrix(ig,iz)
            
            ! Use deflated LU decomposition to solve the linear system
            CALL LUDeflate(Matrix,dx,vector)  
            prev_x = x
            prev_absF = absF
            CALL UpdateSol(ig,iz,dx)   
 
            IF (lbacktrack) THEN
                CALL quad_bakctrack(ig, iz, prev_absF, it_bt, prev_x)
            ELSE
                CALL FormFunctionp(ig,iz)
                CALL FormVector(ig,iz)
                CALL AbsFCal
            END IF
            
            WRITE(output_unit,format_write) 'Iteration number ', it, ' fo = ', sumf, ' fp = ',sump/wk, ' wk = ',wk, ' objF = ', absF
            PRINT format_write, 'Iteration number ', it, ' fo = ', sumf, ' fp = ',sump/wk, ' wk = ',wk, ' objF = ', absF
 			
            !IF (ABS(prev_absF - absF) < SQRT(tol)) EXIT
            !IF (ABS(prev_absF - absF) < tol) EXIT
            
            ! update penalty weight
            IF (it>3) THEN
                lupdtw = .FALSE.
                DO ixy = 1,nxy
                    IF (x(ixy)<0.0) lupdtw = .TRUE.
                END DO
                IF (lupdtw) wk = wk*10.0
                IF (wk>wmax) wk = wmax
            END IF
            
            IF (ABS(1-absF/prev_absF)<tol) EXIT
               
       END DO

    END SUBROUTINE NewtonRun
    
    SUBROUTINE FormVector(ig,iz)
    IMPLICIT NONE
    
        INTEGER(sik), INTENT(IN) :: ig,iz
        INTEGER(sik) :: ixy
        
        CALL FormFunctionF(ig,iz)
        CALL FormGradF(ig,iz)
        CALL MatVecMult(vector,TRANSPOSE(gradF),F,nxy)
        
        ! ! add penalty function
        ! CALL FormGradp(ig,iz)
        ! CALL MatVecMult(test_vector,TRANSPOSE(gradp),p,nxy)
        ! 
        ! vector = vector + test_vector
        
        ! add penalty function
        CALL FormGradpk(ig,iz)
        vector = vector + gradpk

        ! vector = vector + test_vector

        
    END SUBROUTINE FormVector
    
    
    SUBROUTINE FormMatrix(ig,iz)
    IMPLICIT NONE
    
        INTEGER(sik), INTENT(IN) :: ig,iz
        INTEGER(sik) :: ixy, i, j, k
        
        CALL FormFunctionF(ig,iz)
        CALL FormGradF(ig,iz)
        
        CALL MatMatMult(Mat1,TRANSPOSE(gradF),gradF, nxy)
        
        Mat2 = 0.0
        DO k = 1,nxy
            CALL FormGrad2fk(k,ig,iz)
            DO i = 1,nxy
                DO j = 1,nxy
                    Mat2(i,j) = Mat2(i,j) + grad2fk(i,j)*F(k)
                END DO
            END DO
        END DO
                
        DO i = 1,nxy
            DO j = 1,nxy
                Matrix(i,j) = Mat1(i,j) + Mat2(i,j)
            END DO
        END DO
        
        ! add penalty function
       ! CALL FormFunctionp(ig,iz)
       ! Mat2 = 0.0
       ! DO k = 1,nxy
       !     CALL FormGrad2pk(k,ig,iz)
       !     DO i = 1,nxy
       !         DO j = 1,nxy
       !             Mat2(i,j) = Mat2(i,j) + grad2pk(i,j)*p(k)
       !         END DO
       !     END DO
       ! END DO  
        
        ! add penalty function
        Mat2 = 0.0
        DO k = 1,nxy
            CALL FormGrad2pk(k,ig,iz)
            DO i = 1,nxy
                DO j = 1,nxy
                    Mat2(i,j) = Mat2(i,j) + grad2pk(i,j)
                END DO
            END DO
        END DO  
        
        DO i = 1,nxy
            DO j = 1,nxy
                Matrix(i,j) = Matrix(i,j) + Mat2(i,j)
            END DO
        END DO
           
    END SUBROUTINE FormMatrix
    
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
                    hom_cur = two_third * (serpflux(ig,ixy,iz) - serpflux(ig,ineigh,iz)) / (x(ixy)*xstrf(ig,ixy,iz)*hc + x(ineigh)*xstrf(ig,ineigh,iz)*hn)
                    hom_leak = hom_leak + hom_cur*area(ixy,is,iz)
                END IF
            END DO
            F(ixy) = hom_leak - leakage(ig,ixy,iz)
        END DO              
            
    END SUBROUTINE FormFunctionF
    
    SUBROUTINE FormFunctionp(ig,iz)
    IMPLICIT NONE
    
        INTEGER(sik), INTENT(IN) :: ig,iz
        INTEGER(sik) :: ixy, is, ineigh
        REAL(sdk)    :: hmin, hmax
               
        DO ixy = 1,nxy
            hmin = 0.0
            hmax = 0.0
            IF ((x(ixy) - xmin) < 0.0) THEN
                IF (penalty_opt==1) THEN
                    hmin = xmin - x(ixy)
                ELSE IF (penalty_opt==2) THEN
                    hmin = (xmin - x(ixy))**2
                END IF
            END IF
            IF ((x(ixy) - xmax) > 0.0) THEN
                IF (penalty_opt==1) THEN
                    hmax = x(ixy) - xmax
                ELSE IF (penalty_opt==2) THEN
                    hmax = (x(ixy) - xmax)**2
                END IF
            END IF
            p(ixy) = wk * (alpha_L*hmin + alpha_U*hmax)
        END DO
    
    END SUBROUTINE FormFunctionp
    
    SUBROUTINE FormGradF(ig,iz)
        IMPLICIT NONE
        
        INTEGER(sik), INTENT(IN) :: ig,iz
        INTEGER(sik) :: ixy, is, ineigh
        REAL(sdk)    :: Jii_num, Jii_den, Jij_num, sumJii, hc, hn
        
        gradF = 0.0
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
                    Jii_num =  xstrf(ig,ixy,iz) * hc * (serpflux(ig,ixy,iz) - serpflux(ig,ineigh,iz)) * area(ixy,is,iz)
                    Jii_den = (x(ixy)*xstrf(ig,ixy,iz)*hc + x(ineigh)*xstrf(ig,ineigh,iz)*hn) ** 2
                    Jij_num = xstrf(ig,ineigh,iz) * hn * (serpflux(ig,ixy,iz) - serpflux(ig,ineigh,iz)) * area(ixy,is,iz)
                    gradF(ixy,ineigh) = -two_third*Jij_num/Jii_den
                    sumJii = sumJii + Jii_num/Jii_den
               END IF
            END DO
            gradF(ixy,ixy) = -two_third*sumJii
        END DO      
        
    END SUBROUTINE FormGradF
    
    SUBROUTINE FormGradpk(ig,iz)
    IMPLICIT NONE
        INTEGER(sik), INTENT(IN) :: ig,iz
        INTEGER(sik) :: ixy, is
        
        gradpk = 0.0
        IF (penalty_opt==1) THEN
            DO ixy = 1,nxy
                IF (x(ixy)<xmin) THEN
                    gradpk(ixy) =  -wk*alpha_L
                ELSE IF (x(ixy)>xmax) THEN
                    gradpk(ixy) =  wk*alpha_U
                ELSE
                    gradpk(ixy) = 0.0
                END IF
            END DO
        ELSE IF (penalty_opt==2) THEN
            DO ixy = 1,nxy
                IF (x(ixy)<xmin) THEN
                    gradpk(ixy) = 2*wk*(x(ixy)-xmin) * alpha_L
                ELSE IF (x(ixy)>xmax) THEN
                    gradpk(ixy) = 2*wk*(x(ixy)-xmax) * alpha_U
                ELSE
                    gradpk(ixy) = 0.0
                END IF
            END DO
        END IF
    
    END SUBROUTINE FormGradpk
    
    SUBROUTINE FormGrad2fk(k,ig,iz)
        IMPLICIT NONE
        
        INTEGER(sik), INTENT(IN) :: ig,iz
        INTEGER(sik) :: ixy, is, iss, in1,in2,ineigh, i, j, k
        REAL(sdk)    :: num, den, sum, hc, hn, numk
        
        grad2fk = 0.0
        sum = 0.0
        
        ! matrix values 
        DO is=1,ns-2
            in1 = rad_neigh(k,is)
            IF (in1 .NE. 0)THEN
                IF (MOD(is,2) == 1) THEN
                    hc = hx(k)
                    hn = hx(in1)
                ELSE
                    hc = hy(k)
                    hn = hy(in1)
                END IF
                num = 2.0*two_third * xstrf(ig,in1,iz) * hn * (serpflux(ig,k,iz) - serpflux(ig,in1,iz)) * area(k,is,iz)
                den = (x(k)*xstrf(ig,k,iz)*hc + x(in1)*xstrf(ig,in1,iz)*hn) ** 3
                numk = 2.0*two_third * (xstrf(ig,k,iz)*hc)**2 * (serpflux(ig,k,iz) - serpflux(ig,in1,iz)) * area(k,is,iz)
                grad2fk(k,k) = grad2fk(k,k) + numk/den
                grad2fk(k,in1) = num * xstrf(ig,k,iz) * hc/den
                grad2fk(in1,k) = grad2fk(k,in1)
                grad2fk(in1,in1) = num * xstrf(ig,in1,iz) * hc/den
            END IF
            !DO iss=1,ns-2
            !    in2 = rad_neigh(k,is)
            !    IF (in2 .NE. 0)THEN
            !        IF (MOD(is,2) == 1) THEN
            !            hc = hx(k)
            !            hn = hx(in2)
            !        ELSE
            !            hc = hy(k)
            !            hn = hy(in2)
            !        END IF
            !        num = num * xstrf(ig,in2,iz) * hn
            !        grad2fk(in1,in2) = num/den
            !        grad2fk(in2,in1) = num/den
            !    END IF               
            !END DO
        END DO
        
       ! DO i = 1,nxy
       !     DO j = 1,nxy
       !         IF ((i .NE. k) .AND. (j .NE. k)) CONTINUE
       !         !IF ((i .EQ. k) .AND. (j .EQ. k)) CONTINUE
       !         grad2fk(i,j) = grad2fk(i,j)/den
       !     END DO
       ! END DO
        
     
    END SUBROUTINE FormGrad2fk
    
    SUBROUTINE FormGrad2pk(k,ig,iz)
    IMPLICIT NONE
        INTEGER(sik), INTENT(IN) :: k,ig,iz
        INTEGER(sik) :: ixy
        
        grad2pk = 0.0
        IF (penalty_opt==1) THEN
            grad2pk = 0.0
        ELSE IF (penalty_opt==2) THEN
            IF (x(k)<xmin)  THEN
                grad2pk(k,k) = 2*wk * alpha_L
            ELSE IF (x(k)>xmax) THEN
                grad2pk(k,k) = 2*wk * alpha_U
            ELSE
                grad2pk(k,k) = 0.0
            END IF
        END IF
        
    
    END SUBROUTINE FormGrad2pk
        
    SUBROUTINE UpdateXSTr(ig,iz,x)
    IMPLICIT NONE
        
        INTEGER(sik), INTENT(IN) :: ig,iz
        REAL(sdk) :: x(nxy)
        INTEGER(sik) :: ixy
    
        DO ixy=1,nxy
            !IF (x(ixy) < xmin) x(ixy) = xmin
            !IF (x(ixy) > xmax) x(ixy) = xmax
            xstrf(ig,ixy,iz) = xstrf(ig,ixy,iz) * x(ixy)
        END DO
       
    END SUBROUTINE UpdateXSTr
    
    SUBROUTINE UpdateSol(ig,iz,dx)
    IMPLICIT NONE
        
        INTEGER(sik), INTENT(IN) :: ig,iz
        REAL(sdk), INTENT(IN) :: dx(nxy)
        INTEGER(sik) :: ixy, countmin, countmax
        
        countmin = 0
        countmax = 0
        DO ixy=1,nxy
            x(ixy) = x(ixy) - dx(ixy)
            IF (x(ixy) < xmin) countmin = countmin + 1
            IF (x(ixy) > xmax) countmax = countmax + 1
        END DO
        PRINT*,"countmin",countmin,", countmax",countmax
       
    END SUBROUTINE UpdateSol
    
    SUBROUTINE AbsFCal
    IMPLICIT NONE
    
        INTEGER(sik) :: ixy
        REAL(sdk)    :: L2_norm
        
        
        L2_norm = 0.0
        DO ixy=1,nxy
            L2_norm = L2_norm + F(ixy)*F(ixy)
        END DO
        !absF = SQRT(L2_norm)
        sumf = 0.5*L2_norm
        
        ! add penalty function
        sump = SUM(p)
        absF = sumf + sump
        
        
        ! test penalty
        !absF = sump
    
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
    
    SUBROUTINE MatMatMult(MM,M1,M2,dim)
    IMPLICIT NONE
    
        INTEGER(sik), INTENT(IN) :: dim
        REAL(sdk), INTENT(IN) :: M1(dim,dim),M2(dim,dim)
        REAL(sdk), INTENT(OUT) :: MM(dim,dim)
        
        INTEGER(sik) ::i, j, k
        
        DO i = 1,dim
            DO j = 1,dim
                MM(i,j) = 0.0
                DO k = 1,dim
                    MM(i,j) = MM(i,j) + M1(i,k)*M2(k,j)
                END DO
            END DO
        END DO
             
        
    END SUBROUTINE MatMatMult    
    
    SUBROUTINE quad_bakctrack(ig, iz, prev_absF, i, prev_x)
    IMPLICIT NONE
        
        INTEGER(sik), INTENT(IN) :: ig, iz
        REAL(sdk), INTENT(IN) :: prev_absF, prev_x(nxy)
        
        REAL(sdk) :: lamb, g0, g1, lamb1, lambq
        INTEGER(sik) :: i, it
        
        
        ! initialize
        CALL FormFunctionp(ig,iz)
        CALL FormVector(ig,iz)
        CALL AbsFCal
        lamb = 1.0
        it = 0
        IF (absF>prev_absF) x = prev_x
        !xstrf_prev = xstrf
        DO WHILE (absF>prev_absF)
            i = i + 1
            it = it + 1
            IF (it>maxit) EXIT
            IF (lamb<1E-32) EXIT
            lamb1 = lamb
            g0 = prev_absF
            g1 = absF
            !lambq = 0.5*lamb1 ! linear
            lambq = (lamb1**2) / (2*lamb1 - 1 + g1/g0) ! quadratic
            lamb = lambq
            !xstrf = xstrf_prev
            CALL UpdateSol(ig,iz,lamb*dx)
            CALL FormFunctionp(ig,iz)
            CALL FormVector(ig,iz)
            CALL AbsFCal
            WRITE(output_unit,*) '   Backtracking number ', i, ' lambda = ', lamb
        END DO
    END SUBROUTINE quad_bakctrack
    
END Module GenETFMinCM
    
    
    
    