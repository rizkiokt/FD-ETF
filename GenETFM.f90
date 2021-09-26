Module GenETFM
    USE IntrType, ONLY: sdk, sik
    USE XsecM, ONLY: xstrf
    USE SerpentSolutionM, ONLY: serpflux, serpcurns
    USE GeomM
    USE ItrcntlM
    USE ParamM, ONLY: mg
    USE IOVarM, ONLY: output_unit
    
    IMPLICIT NONE
    REAL(sdk), ALLOCATABLE :: F(:), J(:,:), x(:), leakage(:,:,:)
    REAL(sdk)              :: absF, tol
    REAL(sdk), PARAMETER   :: two_third = 2.0/3.0
    
CONTAINS
    
    SUBROUTINE InitialGenETF
    IMPLICIT NONE
    
        ALLOCATE(F(nxy))
        ALLOCATE(J(nxy,nxy))
        ALLOCATE(x(nxy))
        ALLOCATE(leakage(mg,nxy,nz))
        tol = epseig

    END SUBROUTINE InitialGenETF
    
    SUBROUTINE GenETFDriver
    IMPLICIT NONE
        
        INTEGER(sik) :: ig, iz
        
        DO iz=1,nz
            DO ig = 1,mg
                CALL NewtonRun(ig,iz)
            END DO
        END DO
    
    END SUBROUTINE GenETFDriver
    
    SUBROUTINE NewtonRun(ig,iz)
    IMPLICIT NONE
    
        INTEGER(sik), INTENT(IN) :: ig,iz
        INTEGER(sik) :: ixy
        
        ! initial value
        CALL FormFunctionF(ig,iz)
        CALL AbsFCal 
        ! iteration
        DO WHILE(absF>tol)            
            CALL FormJacobian(ig,iz)
            DO ixy = 1,nxy
                WRITE(output_unit,"(10ES12.4)") J(ixy,:)
            END DO
            !J = TRANSPOSE(J)
            CALL GaussElim(x,J,F,nxy)
            CAll UpdateXSTr(ig,iz,x)   
            CALL FormFunctionF(ig,iz)
            CALL AbsFCal
            DO ixy = 1,nxy
                WRITE(output_unit,"(10ES12.4)") F(ixy)
            END DO
            WRITE(output_unit,*) absF
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
    
    SUBROUTINE GaussElim(x,matrix,b,dim)    
    
        IMPLICIT NONE
        
        INTEGER :: dim
        REAL(sdk) :: matrix(dim,dim),A(dim,dim),x(dim,1),b(dim,1)  
        INTEGER :: kk,mm,nn,jj
        REAL(sdk) :: fct
        
        A = matrix
        x = b
        
        ! Forward elimination
        DO kk = 1,dim-1
            DO mm = kk+1,dim
                fct = A(mm,kk) / A(kk,kk)
                DO nn = kk+1,dim
                   A(mm,nn) = A(mm,nn) - fct * A(kk,nn)
                ENDDO
                x(mm,1) = x(mm,1) - fct * x(kk,1)                
            ENDDO
        ENDDO
        
        ! Back Substitution
        kk=dim
        x(kk,1) = x(kk,1)/A(kk,kk)
        DO kk=dim-1,1,-1
           DO jj=(kk + 1),dim
               x(kk,1) = x(kk,1) - A(kk,jj) * x(jj,1)
           END DO
           x(kk,1) = x(kk,1)/A(kk,kk)               
        END DO    

    END SUBROUTINE GaussElim
    
    SUBROUTINE UpdateXSTr(ig,iz,x)
    IMPLICIT NONE
        
        INTEGER(sik), INTENT(IN) :: ig,iz
        REAL(sdk), INTENT(IN) :: x(nxy)
        INTEGER(sik) :: ixy
    
        DO ixy=1,nxy
            xstrf(ig,ixy,iz) = xstrf(ig,ixy,iz) - x(ixy)
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
    
END Module GenETFM
    
    
    
    