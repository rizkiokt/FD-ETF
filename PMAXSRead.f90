SUBROUTINE PMAXSRead
    USE IntrType, ONLY: sdk, sik
    USE XSecM
    USE IOVarM
    USE ParamM, ONLY: mg,ng, mgb, mge
    USE GeomM, ONLY: nz, nxy, xsid
    IMPLICIT NONE
    
    INTEGER(sik) :: i,j,k,ixy,iz,ig,n,jg,l,is 
    LOGICAL      :: FUEL
    CHARACTER(LEN=20) :: word
    CHARACTER(LEN=2000):: line
    
    ! Allocate the cross section arrays
   ! CALL AllocXsec
   ! n = nxy*nz
    n= xs_num
    DO i = 1,n
       ! Looking for node's location
        ixy=1
        iz=1
       DO WHILE (i .NE. xsid(ixy,iz))
          iz = iz + 1
          IF (iz .GT. nz) THEN
             ixy = ixy + 1
             iz = 1
          END IF
          IF (ixy == nxy + 1) ixy = 1
       END DO
       ! Open PMAXS file and read
       OPEN(PMAXS_unit,file=PMAXS_name(i),status='old')
       PRINT*, "Open file ",PMAXS_name(i)
       WRITE(output_unit,*) "Open file ",TRIM(PMAXS_name(i))
       FUEL=.TRUE.
       READ(PMAXS_unit,"(a)") line
       READ(line,*) word
       
       IF (word == "GLOBAL_V") THEN ! PMAXS version 6.2b
           READ(line,*) word, word, word, word, word, word, word, word, word, word, word, word, word, word
           IF (word == 'F') FUEL=.FALSE.
           
           IF (mg == 2) THEN
               DO j = 1,13
                   READ(PMAXS_unit,"(a)")
               END DO
               ! Extract Chi fission spectrum
               ! When the node is a reflector (non-fuel), xschif = 0.0
               IF (.NOT. FUEL) THEN
                  xschif(:,ixy,iz) = 0.0
                  ! Skip reading some parts of PMAX files
                  READ(PMAXS_unit,"(a)")
                  READ(PMAXS_unit,"(a)")
               ELSE
                  READ(PMAXS_unit,"(a)") line
                  READ(line,*)  xschif(:,ixy,iz)
                  ! Skip reading some parts of PMAX files
                  READ(PMAXS_unit,"(a)")
                  
               END IF         
               ! Extract transport, absorption, nu-fission, kappa-fission
               READ(PMAXS_unit,"(a)") line
               READ(line,*) xstrf(:,ixy,iz), xsaf(:,ixy,iz), xsnff(:,ixy,iz), xskff(:,ixy,iz)
               ! Extract scattering cross-section
               READ(PMAXS_unit,"(a)") line
               READ(line,*) xsscat(:,1,ixy,iz), xsscat(:,2,ixy,iz)
               
           ELSE
               
               DO j = 1,13
                  READ(PMAXS_unit,"(a)")
               END DO
               ! Extract Chi fission spectrum
               ! When the node is a reflector (non-fuel), xschif = 0.0
               IF (.NOT. FUEL) THEN
                  xschif(:,ixy,iz) = 0.0
                  ! Skip reading some parts of PMAX files
                  READ(PMAXS_unit,"(a)")
                  READ(PMAXS_unit,"(a)")
               ELSE
                  READ(PMAXS_unit,"(a)") line
                  READ(line,*)  xschif(:,ixy,iz)
                  ! Skip reading some parts of PMAX files
                  DO j = 1,4
                     READ(PMAXS_unit,"(a)")
                  END DO
               END IF
               ! Extract transport XS
               READ(PMAXS_unit,"(a)") line
               READ(line,*)  xstrf(:,ixy,iz)
               ! Extract absorbtion XS
               READ(PMAXS_unit,"(a)") line
               READ(line,*)  xsaf(:,ixy,iz)
               ! Extract nu-fission
               READ(PMAXS_unit,"(a)") line
               READ(line,*)  xsnff(:,ixy,iz)
               ! Extract kappa-fission
               READ(PMAXS_unit,"(a)") line
               READ(line,*) xskff(:,ixy,iz)
               ! Extract scattering matrix
               DO ig = 1,mg
                  READ(PMAXS_unit,"(a)") line
                  READ(line,*)  xsscat(:,ig,ixy,iz)
               END DO
                
           END IF
        
       ELSE IF (word == "GLOB_LOG") THEN ! PMAXS version 6.4dev
           READ(PMAXS_unit,"(a)") line
           READ(PMAXS_unit,"(a)") line
           READ(line,*) word, j, j, j, j, k
           FUEL = .TRUE.
           IF (k == 0) FUEL = .FALSE.
           
           IF (mg == ng) THEN
               IF (FUEL) THEN
                   DO j = 1,18
                       READ(PMAXS_unit,"(a)") line
                   END DO
                   READ(line,*)  xschif(:,ixy,iz)
                   DO j = 1,3
                       READ(PMAXS_unit,"(a)") line
                   END DO
               ELSE
                   DO j = 1,19 
                       READ(PMAXS_unit,"(a)") line
                   END DO
              END IF
               
               ! Extract transport XS, absorbtion XS, nu-fission, kappa-fission
               READ(PMAXS_unit,"(a)") line
               READ(line,*)  xstrf(:,ixy,iz), xsaf(:,ixy,iz), xsnff(:,ixy,iz), xskff(:,ixy,iz)
               ! Extract scattering matrix
               READ(PMAXS_unit,"(a)") line
               READ(line,*)  xsscat(1,1,ixy,iz),xsscat(2,1,ixy,iz),xsscat(1,2,ixy,iz),xsscat(2,2,ixy,iz)              
               
           ELSE 
                              ! Extract Chi fission spectrum
               ! When the node is a reflector (non-fuel), xschif = 0.0
               IF (.NOT. FUEL) THEN
                  xschif(:,ixy,iz) = 0.0
                  ! Skip reading some parts of PMAX files
                  READ(PMAXS_unit,"(a)")
                  READ(PMAXS_unit,"(a)")
               ELSE
                  READ(PMAXS_unit,"(a)") line
                  READ(line,*)  xschif(:,ixy,iz)
                  ! Skip reading some parts of PMAX files
                  DO j = 1,4
                     READ(PMAXS_unit,"(a)")
                  END DO
               END IF
               ! Extract transport XS
               READ(PMAXS_unit,"(a)") line
               READ(line,*)  xstrf(:,ixy,iz)
               ! Extract absorbtion XS
               READ(PMAXS_unit,"(a)") line
               READ(line,*)  xsaf(:,ixy,iz)
               ! Extract nu-fission
               READ(PMAXS_unit,"(a)") line
               READ(line,*)  xsnff(:,ixy,iz)
               ! Extract kappa-fission
               READ(PMAXS_unit,"(a)") line
               READ(line,*) xskff(:,ixy,iz)
               ! Extract scattering matrix
               DO ig = 1,mg
                  READ(PMAXS_unit,"(a)") line
                  READ(line,*)  xsscat(:,ig,ixy,iz)
               END DO
           END IF
       END IF       
       
       ! Closing PMAX file
       CLOSE(PMAXS_unit)
       ! Define total XS from scattering matrices and absorption XS
       DO ig = 1,mg
          xstf(ig,ixy,iz) = xsaf(ig,ixy,iz)
          DO jg = 1,mg
              IF (ig .NE. jg) xstf(ig,ixy,iz) = xstf(ig,ixy,iz) + xsscat(ig,jg,ixy,iz)
          END DO
       END DO

       DO ig = 1,mg
           ! Standard diffusion coefficient
           xsdf(ig,ixy,iz) = 1.0D0/(3.0D0*xstrf(ig,ixy,iz))
       END DO
              
       
       ! Check for the same xs id
       DO k = 1,nz
           DO j = 1,nxy
               IF (xsid(j,k) == i) THEN
                  xschif(:,j,k)   = xschif(:,ixy,iz)  
                  xsnff (:,j,k)   = xsnff (:,ixy,iz)  
                  xskff (:,j,k)   = xskff (:,ixy,iz)  
                  xsaf  (:,j,k)   = xsaf  (:,ixy,iz)  
                  xstrf (:,j,k)   = xstrf (:,ixy,iz)  
                  xstf  (:,j,k)   = xstf  (:,ixy,iz)  
                  xsdf  (:,j,k)   = xsdf  (:,ixy,iz)  
                  xsscat(:,:,j,k) = xsscat(:,:,ixy,iz)
                  DO ig = 1,mg
                      xsdf (ig,j,k) = 1.0D0/(3.0D0*xstrf(ig,ixy,iz))
                  END DO
               END IF
           END DO
       END DO 
    END DO
        
  IF(mg>ng)THEN
    DO iz = 1,nz
        DO ixy = 1,nxy
            DO ig = 1,ng
                xschi(ig,ixy,iz) = 0.0
                DO i = mgb(ig),mge(ig)
                    xschi(ig,ixy,iz) = xschi(ig,ixy,iz) + xschif(i,ixy,iz)
                END DO
            END DO
        END DO
    END DO
  ELSE
    DO iz = 1,nz
        DO ixy = 1,nxy
            xss(ixy,iz)=xsscat(1,2,ixy,iz)
        END DO
    END DO
        
  ENDIF
    
END SUBROUTINE PMAXSRead
