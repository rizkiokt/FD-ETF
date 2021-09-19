Module GenETFM
    USE IntrType, ONLY: sdk, sik
    USE XsecM, ONLY: xstrf
    USE SerpentSolutionM, ONLY: serpflux, serpcurns
    
CONTAINS
    
    SUBROUTINE InitialGenETF
        
    END SUBROUTINE InitialGenETF
    
    SUBROUTINE GenETFDriver
        
        DO ig = 1,mg
            CALL NewtonRun(ig)
        END DO
    
    END SUBROUTINE GenETFDriver
    
    
    SUBROUTINE NewtonRun(ig)
    IMPLICIT NONE
    
        DO WHILE(absF>tol)            
            CALL FormJacobian(ig)
            CALL GaussElim(x,J,F,nxy)
            CAll UpdateXSTr(ig,x)   
            CALL FormFunctionF(ig)
            
        END DO
        
    
    END SUBROUTINE NewtonRun
    
    
    SUBROUTINE FormFunctionF(ig)
    IMPLICIT NONE
        
        DO 
    
        
    
    END SUBROUTINE FormFunctionF
    
    
    SUBROUTINE FormJacobian
    
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
    
    
    
    