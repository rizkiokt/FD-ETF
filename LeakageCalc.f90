SUBROUTINE LeakageCalc
    USE GeomM
    USE SerpentSolutionM
    USE GenETFMinCM, ONLY: leakage
    
    IMPLICIT NONE
    INTEGER(sik) :: ig, is, ix, iy, ixy, iz
    
        DO iz=1,nz
            DO ixy=1,nxy
                DO ig = 1,mg
                    leakage(ig,ixy,iz) = 0.0
                    DO is = 1,ns
                        leakage(ig,ixy,iz) = leakage(ig,ixy,iz) - serpcurns(ig,is,ixy,iz) * area(ixy,is,iz)
                    END DO
                END DO
            END DO
        END DO
            
END SUBROUTINE LeakageCalc
