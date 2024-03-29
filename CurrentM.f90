MODULE CurrentM
    USE IntrType, ONLY: sdk, sik
    USE XSecM, ONLY: xsdf
    USE GeomM, ONLY: ns,nxy,nz,rad_neigh, hx, hy, hz
    USE ParamM, ONLY: mg
    USE SerpentSolutionM, ONLY: serpcurns, serpflux
    USE IOVarM, ONLY: output_unit
    
    IMPLICIT NONE
    REAL(sdk), ALLOCATABLE :: fdcurns(:,:,:,:), curerr(:,:,:,:),curratio(:,:,:,:)
    
    CONTAINS
    
    SUBROUTINE InitFDCurCalc
    IMPLICIT NONE
    
        ALLOCATE(fdcurns(mg,ns,nxy,nz))
        ALLOCATE(curerr(mg,ns,nxy,nz))
        ALLOCATE(curratio(mg,ns,nxy,nz))

    
    END SUBROUTINE InitFDCurCalc
    
    
    SUBROUTINE FDCurCalc
    IMPLICIT NONE
        
        INTEGER(sik) :: ig,is,ixy,iz,ineigh
        REAL(sdk) :: hc,hn,num,denom
        
        fdcurns = 0.0
        DO ig = 1,mg
            DO iz = 1,nz
                DO ixy = 1,nxy
                    DO is = 1,ns
                        ! w = 1
                        ! s = 2
                        ! e = 3
                        ! n = 4
                        ! b = 5
                        ! t = 6
                        IF (is<=4) THEN
                            ineigh = rad_neigh(ixy,is)
                            IF (MOD(is,2) == 1) THEN
                                hc = hx(ixy)
                                IF (ineigh>0) hn = hx(ineigh)
                            ELSE
                                hc = hy(ixy)
                                IF (ineigh>0) hn = hy(ineigh)
                            END IF      
                            IF (ineigh>0) THEN
                                num = serpflux(ig,ixy,iz) - serpflux(ig,ineigh,iz)
                                denom = hc/2.0/xsdf(ig,ixy,iz) + hn/2.0/xsdf(ig,ineigh,iz)
                                fdcurns(ig,is,ixy,iz) = num/denom
                            END IF
                            
                        END IF
                        IF (nz>1) THEN
                            IF (is == 5) THEN
                                ineigh = iz-1
                            ELSE IF (is == 6) THEN
                                ineigh = iz+1
                            END IF
                            hc = hz(iz)
                            hn = hz(ineigh)
                            num = serpflux(ig,ixy,iz) - serpflux(ig,ixy,ineigh)
                            denom = hc/2.0/xsdf(ig,ixy,iz) + hn/2.0/xsdf(ig,ixy,ineigh)
                            fdcurns(ig,is,ixy,iz) = num/denom
                        END IF
                    END DO
                END DO
            END DO
        END DO
        
    END SUBROUTINE FDCurCalc
    
    SUBROUTINE CompareCur
    IMPLICIT NONE
    
        INTEGER(sik) :: ig,is,ixy,iz
        REAL(sdk)    :: tmp
        
        WRITE(output_unit,*) "Surface current comparison between finite difference and Serpent solution"
        WRITE(output_unit,"(A4,A4,A4,A12,A12,A12,A12)") "ixy","is","ig","FD-cur","Serp-cur","Rel.Diff","Ratio"
        curerr = 0.0
        DO iz = 1,nz
            DO ixy = 1,nxy
                DO is = 1,ns
                    DO ig = 1,mg
                        IF (fdcurns(ig,is,ixy,iz) .NE. 0.0) THEN
                            ! correct for different direction in Serpent Current
                            !tmp = fdcurns(ig,is,ixy,iz)/(-serpcurns(ig,is,ixy,iz))
                            !IF (tmp<0.0) serpcurns(ig,is,ixy,iz) = -fdcurns(ig,is,ixy,iz)
                            !
                            curerr(ig,is,ixy,iz) = fdcurns(ig,is,ixy,iz)/(-serpcurns(ig,is,ixy,iz)) - 1
                            curratio(ig,is,ixy,iz) = fdcurns(ig,is,ixy,iz)/(-serpcurns(ig,is,ixy,iz))
                            WRITE(output_unit,"(I4,I4,I4,ES12.4,ES12.4,F12.4,F12.4)") ixy,is,ig,fdcurns(ig,is,ixy,iz),-serpcurns(ig,is,ixy,iz),curerr(ig,is,ixy,iz),curratio(ig,is,ixy,iz)
                        END IF
                    END DO
                END DO
            END DO
        END DO
 
    END SUBROUTINE CompareCur
    
    
    
    
    
END MODULE CurrentM

    