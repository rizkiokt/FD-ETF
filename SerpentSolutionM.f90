MODULE SerpentSolutionM
      USE IntrType, ONLY: sdk, sik
      USE TriGeomM, ONLY: n, nz, nxy, arearad, areaz, ibcx, ibcy, ibcz
      USE TriIndexM, ONLY: nsurface, lefttri, trineigh, trisurf, surftri, ncorn, tricorn, trixsid
      USE ParamM, ONLY: mg,ng
      USE XSecM, ONLY: isCDF,xs_num
      IMPLICIT NONE  
  
      REAL(sdk), POINTER, DIMENSION(:,:,:,:) :: serpphis,serpincurns,serpoutcurns,serpcurns,NFDcurndif,serpcpflux,serpcpcurns,cpratio
      REAL(sdk), POINTER, DIMENSION(:,:,:)   :: serpflux, NFDphifdif, hetphic
      REAL(sdk), POINTER, DIMENSION(:,:)     :: tempflux, tempphis,  tempincurns, tempoutcurns, tempcurns, tempcpflux, tempcpcurns
      REAL(sdk), POINTER, DIMENSION(:)       :: vv,vs,vc,tmpmg
      INTEGER(sik)                           :: ntot, ns, nc, nvs, nvv, ngs, ngc,nvc
      CHARACTER(LEN=100)                      :: serp_file, cpflux_file
      LOGICAL                                :: left,radial
      REAL(sdk)                              :: serp_eigv, NFDeigvdif

CONTAINS
      SUBROUTINE InitialSerpent
      IMPLICIT NONE
          
      
          ntot = nxy*nz
          ns = 5 ! number of surfaces for each node
          nc = 3 ! number of radial corners for each node
          nvs = 2*ns*mg ! length of vector array for surface variables 
          nvv = 2*mg ! length of vector array for volume variables
          nvc = 2*nc*mg
          ngs = mg*ns
          ngc = mg*nc
          left = .FALSE.
             
          ALLOCATE(serpphis(mg,ns,nxy,nz),serpcurns(mg,ns,nxy,nz),serpincurns(mg,ns,nxy,nz),serpoutcurns(mg,ns,nxy,nz))
          ALLOCATE(serpcpflux(mg,nc,nxy,nz),serpcpcurns(mg,nc,nxy,nz),cpratio(mg,nc,nxy,nz))
          ALLOCATE(serpflux(mg,nxy,nz))
          ALLOCATE(tempflux(ntot,mg), tempphis(ntot,ngs), tempcurns(ntot,ngs), tempincurns(ntot,ngs), tempoutcurns(ntot,ngs))
          ALLOCATE(tempcpflux(ntot,ngc),tempcpcurns(ntot,ngc),tmpmg(mg),hetphic(mg,ncorn,nz))
          ALLOCATE(vv(nvv),vs(nvs),vc(nvc))
          ALLOCATE(NFDcurndif(mg,ns,nxy,nz), NFDphifdif(mg,nxy,nz))
          NFDcurndif = 0.0
          NFDphifdif = 0.0
          
      END SUBROUTINE InitialSerpent
    
      SUBROUTINE SerpentSolution
         IMPLICIT NONE
         INTEGER(sik)       :: i, j, ixy, iz, is, ig, ic, iis, iic, icp
         CHARACTER(LEN=20)  :: word
         CHARACTER(LEN=15000):: line
         REAL(sdk)          :: area
         REAL(sdk)          :: diff(mg,nsurface,nz), maxdiff(3), avediff(3), diffz(mg,nxy,nz), maxdiffz, avediffz, difphis(mg,ns,nxy,nz)
         INTEGER(sik)       :: il, ir, count, isurf, locsurf(3), locxy, locz(3), locg(3)
         LOGICAL            :: lfound

         ! Open Serpent result files and extract required data
         OPEN (UNIT=55, FILE=serp_file, STATUS='old', ACTION='read')
         
         ! Extract Eigenvalue from Serpent
         DO
             READ(55,*) line
             READ(line,*) word
             IF (word == "ANA_KEFF") EXIT
         END DO
         READ(55,'(a)') line
         READ(line,*) word,word,word,word,word,word,serp_eigv
         
         ! Extract Surface Flux, currents, volume flux from Serpent ADF solutions         
         i = 0
         DO i = 1,ntot
            DO
               READ(55,*) line
               READ(line,*) word
               IF (word == "DF_CORN_AREA") EXIT
            END DO
            READ(55,'(a)') line
            READ(line,*) word,word,word,word,word,word,vs(:)
            tempincurns(i,:) = vs(1:nvs:2)
            READ(55,'(a)') line
            READ(line,*) word,word,word,word,word,word,vs(:)
            tempoutcurns(i,:) = vs(1:nvs:2)
            READ(55,'(a)') line
            READ(line,*) word,word,word,word,word,word,vs(:)
            tempcurns(i,:) = vs(1:nvs:2)            
            DO
               READ(55,*) line
               READ(line,*) word
               IF (word == "DF_CORN_OUT_CURR") EXIT
            END DO
            READ(55,'(a)') line
            READ(line,*) word,word,word,word,word,word,vc(:)
            tempcpcurns(i,:) = vc(1:nvc:2)
            READ(55,'(a)') line
            READ(line,*) word,word,word,word,word,word,vv(:)
            tempflux(i,:) = vv(1:nvv:2)
            READ(55,'(a)') line
            READ(line,*) word,word,word,word,word,word,vs(:)
            tempphis(i,:) = vs(1:nvs:2)
            READ(55,'(a)') line
            READ(line,*) word,word,word,word,word,word,vc(:)
            tempcpflux(i,:) = vc(1:nvc:2)
         END DO

         DO iz = 1,nz
             DO ixy = 1,nxy
                ! i = (iz-1)*nxy+ixy
                 i = trixsid(ixy,iz)
                 DO ig = 1,mg
                     serpflux(ig,ixy,iz) = tempflux(i,ig)
                 END DO
             END DO
         END DO
         
        DO iz = 1,nz
             DO ixy = 1,nxy
                 !i = (iz-1)*nxy+ixy
                 i = trixsid(ixy,iz)
                 IF (ANY(lefttri == ixy)) THEN
                     left = .TRUE.
                 ELSE
                     left = .FALSE.
                 END IF
                 DO is = 1,ns
                     iis = is
                     IF (is == 1) iis = 3
                     IF (is == 2) iis = 1
                     IF (is == 3) iis = 2
                     IF ((is == 4) .OR. (is == 5)) THEN
                         area = areaz
                         radial = .FALSE.
                     ELSE 
                         area = arearad(iz)
                         radial = .TRUE.
                     END IF
                     DO ig = 1,mg
                         j = (iis-1)*mg+ig
                         serpphis(ig,is,ixy,iz) = tempphis(i,j)
                         ! Surface currents in Serpent are area integrated values, therefore:
                         serpincurns(ig,is,ixy,iz) = tempincurns(i,j)/area
                         serpoutcurns(ig,is,ixy,iz) = tempoutcurns(i,j)/area
                         serpcurns(ig,is,ixy,iz) = tempcurns(i,j)/area
                         IF (left .AND. radial) serpcurns(ig,is,ixy,iz) = -serpcurns(ig,is,ixy,iz)
                         IF (is == 5) serpcurns(ig,is,ixy,iz) = -serpcurns(ig,is,ixy,iz)        
                         ! Define serpent surface flux from outgoing and incoming currents
                        ! serpphis(ig,is,ixy,iz) = 2.0*(serpincurns(ig,is,ixy,iz) + serpoutcurns(ig,is,ixy,iz))
                        ! difphis(ig,is,ixy,iz) = (tempphis(i,j) - serpphis(ig,is,ixy,iz))/serpphis(ig,is,ixy,iz)
                     END DO
                 END DO
             END DO
        END DO
        
        ! Extract corner-point fluxes and currents
        DO iz = 1,nz
            DO ixy = 1,nxy
                !i = (iz-1)*nxy+ixy
                i = trixsid(ixy,iz)
                DO ic = 1,nc
                    IF (ic == 1) iic = 3
                    IF (ic == 2) iic = 1
                    IF (ic == 3) iic = 2
                    DO ig = 1,mg
                        j = (iic-1)*mg+ig
                        serpcpflux(ig,ic,ixy,iz) = tempcpflux(i,j)
                        serpcpcurns(ig,ic,ixy,iz) = tempcpcurns(i,j)                        
                    END DO
                END DO
            END DO
        END DO
        
        
        CLOSE(55)  
         
        ! Force surface fluxes on vacuum boundaries to be twice net currents
        IF (ibcz(1) == 2) THEN 
            DO ixy = 1,nxy
                DO ig = 1,mg
                    serpphis(ig,4,ixy,1) = ABS(2.0*serpcurns(ig,4,ixy,1))
                END DO
            END DO
        END IF
        IF (ibcz(2) == 2) THEN
            DO ixy = 1,nxy
                DO ig = 1,mg
                    serpphis(ig,5,ixy,nz) = ABS(2.0*serpcurns(ig,5,ixy,nz))
                END DO
            END DO
        END IF
        DO ixy = 1,nxy
            DO is = 1,3
                IF (trineigh(ixy,is) == 0 .AND. ibcx(1) == 2) THEN
                    DO iz = 1,nz
                        DO ig = 1,mg
                            serpphis(ig,is,ixy,iz) = ABS(2.0*serpcurns(ig,is,ixy,iz))
                        END DO
                    END DO
                END IF
            END DO
        END DO
       
     ! Read corner point fluxes from averaged GenPMAXS homogenous corner point fluxes
        IF (isCDF) THEN
            IF (TRIM(cpflux_file) .NE. "") THEN
                cpflux_file = TRIM(cpflux_file)
                OPEN (UNIT=65, FILE=cpflux_file, STATUS='old', ACTION='read')
                DO i = 1,xs_num
                    lfound = .FALSE.
                    DO iz = 1,nz
                        DO ixy = 1,nxy
                            IF (trixsid(ixy,iz) == i) THEN
                                lfound = .TRUE.
                                EXIT
                            END IF
                        END DO
                        IF (lfound) EXIT
                    END DO
                    DO ic = 1,nc
                        icp = tricorn(ixy,ic)
                        READ(65,'(a)') line
                        READ(line,*) tmpmg
                        hetphic(:,icp,iz) = tmpmg
                    END DO
                END DO
            END IF
        END IF
       ! IF (isCDF) THEN
       !     IF (TRIM(cpflux_file) .NE. "") THEN
       !         cpflux_file = TRIM(cpflux_file)
       !         OPEN (UNIT=65, FILE=cpflux_file, STATUS='old', ACTION='read')
       !         DO iz = 1,nz
       !             DO ixy = 1,nxy
       !                 DO ic = 1,nc
       !                     icp = tricorn(ixy,ic)
       !                     READ(65,'(a)') line
       !                     READ(line,*) tmpmg
       !                     hetphic(:,icp,iz) = tmpmg
       !                 END DO
       !             END DO
       !         END DO
       !     END IF
       ! END IF
        
        DO iz = 1,nz
            DO ig = 1,mg
                CALL cpb6_test(ig,iz)
                CALL cpb2_test(ig,iz)
            END DO
        END DO
        
        
        CLOSE(65)
  
     !  ! zero out currents on reflective boundary
     !  IF (ibcz(1) == 0) serpcurns(:,4,:,1) = 0.0
     !  IF (ibcz(2) == 0) serpcurns(:,5,:,nz) = 0.0
     !  DO ixy = 1,nxy
     !      DO is = 1,3
     !          IF (trineigh(ixy,is) == 0 .AND. ibcx(1) == 0) serpcurns(:,is,ixy,:) = 0.0
     !      END DO
     !  END DO
     !  
     !  ! Force the same surface fluxes and currents to have the same values
     !  ! Radial surfaces
     !  DO iz = 1,nz
     !      area = arearad(iz)
     !      DO isurf = 1,nsurface
     !          il = surftri(isurf,1)
     !          ir = surftri(isurf,2)
     !          IF ((il==0) .OR. (ir==0)) THEN ! boundary
     !              CONTINUE
     !          ELSE 
     !              IF (isurf == trisurf(il,1)) is = 1
     !              IF (isurf == trisurf(il,2)) is = 2
     !              IF (isurf == trisurf(il,3)) is = 3
     !              DO ig = 1,mg
     !                  serpcurns(ig,is,il,iz) = 0.5*(serpcurns(ig,is,il,iz) - serpcurns(ig,is,ir,iz))
     !                  serpcurns(ig,is,ir,iz) = - serpcurns(ig,is,il,iz)
     !                  serpphis(ig,is,il,iz) = 0.5*(serpphis(ig,is,il,iz) + serpphis(ig,is,ir,iz))
     !                  serpphis(ig,is,ir,iz) = serpphis(ig,is,il,iz)
     !              END DO
     !          END IF
     !      END DO
     !  END DO
     !  
     !   ! Axial surfaces
     !   IF (nz>1) THEN
     !       DO iz = 2,nz
     !           DO ixy = 1,nxy
     !               DO ig = 1,mg
     !                   serpcurns(ig,4,ixy,iz)   = 0.5*(serpcurns(ig,4,ixy,iz) + serpcurns(ig,5,ixy,iz-1))
     !                   serpcurns(ig,5,ixy,iz-1) = serpcurns(ig,4,ixy,iz)
     !                   serpphis(ig,4,ixy,iz)   = 0.5*(serpphis(ig,4,ixy,iz) + serpphis(ig,5,ixy,iz-1))
     !                   serpphis(ig,5,ixy,iz-1) = serpphis(ig,4,ixy,iz)
     !               END DO
     !           END DO
     !       END DO
     !   END IF
     !   avediffz = avediffz/count
     !   
     !   ! Differences of surface fluxes on the same surfaces
     !   diff = 0.0
     !   maxdiff = 0.0
     !   avediff = 0.0
     !   count = 0
     !   ! Radial surfaces
     !   DO iz = 1,nz
     !       area = arearad(iz)
     !       DO isurf = 1,nsurface
     !           il = surftri(isurf,1)
     !           ir = surftri(isurf,2)
     !           IF ((il==0) .OR. (ir==0)) THEN ! boundary
     !               CONTINUE
     !           ELSE 
     !               IF (isurf == trisurf(il,1)) is = 1
     !               IF (isurf == trisurf(il,2)) is = 2
     !               IF (isurf == trisurf(il,3)) is = 3
     !               DO ig = 1,mg
     !                   diff (ig,isurf,iz) = ABS((serpphis(ig,is,il,iz)-serpphis(ig,is,ir,iz))/serpphis(ig,is,il,iz))
     !                   IF (diff(ig,isurf,iz) > maxdiff(is)) THEN
     !                       maxdiff(is) = diff(ig,isurf,iz)
     !                       locsurf(is) = isurf
     !                       locz(is) = iz
     !                       locg(is) = ig
     !                   END IF 
     !                   avediff(is) = avediff(is) + diff(ig,isurf,iz) 
     !                   count = count + 1
     !               END DO
     !           END IF
     !       END DO
     !   END DO
     !   DO is = 1,3
     !       avediff(is) = avediff(is)/count
     !   END DO
     !   
     !   ! Axial surfaces
     !   diffz = 0.0
     !   maxdiffz = 0.0
     !   avediffz = 0.0
     !   count = 0
     !   IF (nz>1) THEN
     !       DO iz = 2,nz
     !           DO ixy = 1,nxy
     !               DO ig = 1,mg
     !                   diffz(ig,ixy,iz) = ABS((serpphis(ig,4,ixy,iz) - serpphis(ig,5,ixy,iz-1))/serpphis(ig,4,ixy,iz))
     !                   IF (serpcurns(ig,4,ixy,iz) == 0.0) diffz(ig,ixy,iz) = 0.0
     !                   IF (diffz(ig,ixy,iz) > maxdiffz) maxdiffz = diffz(ig,ixy,iz)
     !                   avediffz = avediffz + diffz(ig,ixy,iz)
     !                   count = count + 1
     !               END DO
     !           END DO
     !       END DO
     !   END IF
     !   avediffz = avediffz/count
        
      !  CALL print_serp_cpflux
                         
      END SUBROUTINE SerpentSolution
           
      SUBROUTINE SerpReplace
      USE SolvecM, ONLY: phif,phi,psi, NFDphis
      USE CurrentM, ONLY: curnp, curnx, curnu, curnz
      USE ItrcntlM, ONLY: reigv,eigv
      USE LscoefM, ONLY: af
      USE MGLinSysM, ONLY: GroupCond
      IMPLICIT NONE
         INTEGER(sik)       :: ixy, iz, is,ig
         
         DO iz = 1,nz
             DO ixy = 1,nxy
                 DO ig = 1,mg
                     ! Calculate the difference before replacement
                     NFDphifdif(ig,ixy,iz) = (phif(ig,ixy,iz) - serpflux(ig,ixy,iz))/serpflux(ig,ixy,iz)
                     IF (serpcurns(ig,1,ixy,iz) .NE. 0.0) NFDcurndif(ig,1,ixy,iz) = (curnp(ig,ixy,iz) - serpcurns(ig,1,ixy,iz))/serpcurns(ig,1,ixy,iz)
                     IF (serpcurns(ig,2,ixy,iz) .NE. 0.0) NFDcurndif(ig,2,ixy,iz) = (curnx(ig,ixy,iz) - serpcurns(ig,2,ixy,iz))/serpcurns(ig,2,ixy,iz)
                     IF (serpcurns(ig,3,ixy,iz) .NE. 0.0) NFDcurndif(ig,3,ixy,iz) = (curnu(ig,ixy,iz) - serpcurns(ig,3,ixy,iz))/serpcurns(ig,3,ixy,iz)
                     IF (serpcurns(ig,4,ixy,iz) .NE. 0.0) NFDcurndif(ig,4,ixy,iz) = (curnz(ig,ixy,iz) - serpcurns(ig,4,ixy,iz))/serpcurns(ig,4,ixy,iz)
                     IF (serpcurns(ig,5,ixy,iz) .NE. 0.0) NFDcurndif(ig,5,ixy,iz) = (curnz(ig,ixy,iz+1) - serpcurns(ig,5,ixy,iz))/serpcurns(ig,5,ixy,iz)
                     
                     ! Replace the CMFD solutions                     
                     phif(ig,ixy,iz) = serpflux(ig,ixy,iz)
                     curnp(ig,ixy,iz) = serpcurns(ig,1,ixy,iz)
                     curnx(ig,ixy,iz) = serpcurns(ig,2,ixy,iz)
                     curnu(ig,ixy,iz) = serpcurns(ig,3,ixy,iz)
                     curnz(ig,ixy,iz) = serpcurns(ig,4,ixy,iz)
                     
                  !   DO is = 1,5
                   !      NFDphis(ig,is,ixy,iz) = serpphis(ig,is,ixy,iz)
                   !  END DO
                 END DO
             END DO
         END DO
         
         ! IF (mg == ng) phi = phif
         
         DO ixy = 1,nxy
             DO ig = 1,mg
                 curnz(ig,ixy,nz+1) = serpcurns(ig,5,ixy,nz)
             END DO
         END DO
         
         ! calculated eigenvalue difference before replacement
         NFDeigvdif = (eigv - serp_eigv)/serp_eigv
         
         ! replace eigenvalue
         eigv = serp_eigv
         reigv = 1/serp_eigv
         
        IF(mg>ng) THEN
            CALL GroupCond
        ENDIF    
         DO iz = 1,nz 
             DO ixy = 1,nxy
                  psi(ixy,iz)=af(1,ixy,iz)*phi(1,ixy,iz)
                  DO ig=2,ng
                     psi(ixy,iz)=psi(ixy,iz)+af(ig,ixy,iz)*phi(ig,ixy,iz)
                  ENDDO
            ENDDO
        ENDDO
            
      END SUBROUTINE SerpReplace
      
      SUBROUTINE NormalizeSerp
      USE SolvecM, ONLY: phif
      IMPLICIT NONE
      
        REAL(sdk)    ::sumSerp, sumNFD, ratio
        INTEGER(sik) :: iz, ixy, is, ig 
      
        sumSerp = SUM(serpflux)
        sumNFD  = SUM(phif)
        ratio   = sumNFD/sumSerp
      
        DO iz = 1,nz
             DO ixy = 1,nxy
                 DO ig = 1,mg
                    serpflux(ig,ixy,iz) = serpflux(ig,ixy,iz)*ratio
                 END DO
             END DO
        END DO
        
        DO iz = 1,nz
             DO ixy = 1,nxy
                 DO is = 1,ns
                    DO ig = 1,mg
                       serpcurns(ig,is,ixy,iz) = serpcurns(ig,is,ixy,iz)*ratio
                       serpphis(ig,is,ixy,iz) = serpphis(ig,is,ixy,iz)*ratio
                    END DO
                 END DO
             END DO
         END DO
      
      END SUBROUTINE NormalizeSerp
      
    !  SUBROUTINE cpfluxReplace
    !  !USE NodalDriverM, ONLY: phicp
    !  IMPLICIT NONE
    !     INTEGER(sik) :: iz,icp,ig
    !  
    !     DO iz = 1,nz
    !         DO icp = 1,ncorn
    !             DO ig = 1,mg
    !                 phicp(ig,icp,iz) = hetphic(ig,icp,iz)
    !             END DO
    !         END DO
    !     END DO
    !  
    !  END SUBROUTINE cpfluxReplace
      
      SUBROUTINE cpfluxCorrect
      USE TriIndexM, ONLY: tricorn,ncorn
      IMPLICIT NONE
         
          INTEGER(sik)       :: i, j, ixy, iz, is, ig, ic, icp, nnodes 
          INTEGER(sik), ALLOCATABLE :: xy(:), cc(:)
          REAL(sdk)          :: cpflux
          
          DO iz = 1,nz
              DO icp = 1,ncorn
                  cpflux = 0.0
                  nnodes = 0
                  DO ig = 1,mg
                      DO ixy = 1,nxy
                          DO ic = 1,nc
                              IF (tricorn(ixy,ic) == icp) THEN
                                  cpflux = cpflux + serpcpflux(ig,ic,ixy,iz)
                                  nnodes = nnodes + 1
                                  xy(nnodes) = ixy
                                  cc(nnodes) = ic
                              END IF
                          END DO
                      END DO
                      cpflux = cpflux/nnodes
                      DO i = 1,nnodes
                          cpratio(ig,cc(i),xy(i),iz) = cpflux/serpcpflux(ig,cc(i),xy(i),iz)
                      END DO
                  END DO
              END DO
          END DO          
      
      END SUBROUTINE cpfluxCorrect
      
      SUBROUTINE cpb6_test(ig,iz)
      USE XsecM
      IMPLICIT NONE
         
         INTEGER(sik), INTENT(IN) :: ig,iz
         
         REAL(sdk) :: A(7), RHS, x(7), RHS_test, rel_error
         REAL(sdk) :: fc(nc,6), fs(nc,6), D(6), Js(6), phis(2*6)
         INTEGER(sik) :: nod(6), dir(nc), cor(7), i, i2, i3
         
         nod = (/3,1,2,4,6,5/)
         dir = (/2,3,1/)
         cor = (/4,5,2,1,3,6,7/)
         D   = xsdrf(ig,:,iz)
         fc  = xscdf(ig,:,:,iz)
         fs  = xsadf(ig,:,:,iz)
         Js(1) = serpcurns(ig,1,1,iz)
         Js(2) = -serpcurns(ig,3,2,iz)
         Js(3) = -serpcurns(ig,2,3,iz)
         Js(4) = serpcurns(ig,2,4,iz)
         Js(5) = serpcurns(ig,3,5,iz)
         Js(6) = -serpcurns(ig,1,6,iz)
         phis(1) = serpphis(ig,1,1,iz)
         phis(2) = serpphis(ig,3,2,iz)
         phis(3) = serpphis(ig,2,3,iz)
         phis(4) = serpphis(ig,2,4,iz)
         phis(5) = serpphis(ig,3,5,iz)
         phis(6) = serpphis(ig,1,6,iz)
         phis(7) = serpphis(ig,1,3,iz)
         phis(8) = serpphis(ig,3,1,iz)
         phis(9) = serpphis(ig,2,2,iz)
         phis(10)= serpphis(ig,1,4,iz)
         phis(11)= serpphis(ig,3,6,iz)
         phis(12)= serpphis(ig,2,5,iz)
         x = hetphic(ig,:,iz)
         
         D = D(nod)
         x = x(cor)
         fc = fc(dir,nod)
         fs = fs(dir,nod)
         Js = Js(nod)
         phis(1:6) = phis(nod)
         
         A(1) = 22.0D0*(D(1)/fc(1,1) + D(2)/fc(1,2) + D(3)/fc(1,3) + D(4)/fc(1,4) + D(5)/fc(1,5) + D(6)/fc(1,6))
         A(2) = D(1)/fc(2,1) + D(6)/fc(3,6)
         A(3) = D(2)/fc(2,2) + D(1)/fc(3,1)
         A(4) = D(3)/fc(2,3) + D(2)/fc(3,2)
         A(5) = D(4)/fc(2,4) + D(3)/fc(3,3)
         A(6) = D(5)/fc(2,5) + D(4)/fc(3,4)
         A(7) = D(6)/fc(2,6) + D(5)/fc(3,5)
         
         RHS = 0.0
         DO i=1,6
             RHS = RHS - 2.0D0*sqrt(3.0D0)*Js(i)
             RHS = RHS - 24.0D0*D(i)*phis(i)/fs(1,i)
             i2 = i + 7
             IF (i2>12) i2 = 7
             RHS = RHS + 24.0D0*D(i)*phis(i2)/fs(2,i)
             i3 = i + 6
             RHS = RHS + 24.0D0*D(i)*phis(i3)/fs(3,i)
         END DO
         
         RHS_test = 0.0
         DO i = 1,7
             RHS_test = RHS_test + A(i)*x(i)
         END DO
         
         rel_error = (RHS_test - RHS)/RHS
               
      END SUBROUTINE cpb6_test
      
      SUBROUTINE cpb2_test(ig,iz) ! corner point = 7
      USE TriGeomM
      USE XsecM
      IMPLICIT NONE
         INTEGER(sik), INTENT(IN) :: ig,iz
         
         REAL(sdk) :: A(4), RHS, x(4), RHS_test, rel_error
         REAL(sdk) :: fc(nc,6), fs(nc,6), D(6), Js(12), phis(2*6), alpha(12)
         INTEGER(sik) :: nod(6), dir(nc), cor(7), i, i2, i3
         
         alpha = alxlf(ig)
         nod = (/3,1,2,4,6,5/)
         dir = (/2,3,1/)
         cor = (/4,5,2,1,3,6,7/)
         D   = xsdrf(ig,:,iz)
         fc  = xscdf(ig,:,:,iz)
         fs  = xsadf(ig,:,:,iz)
         Js(1) = serpcurns(ig,1,1,iz)
         Js(2) = -serpcurns(ig,3,2,iz)
         Js(3) = -serpcurns(ig,2,3,iz)
         Js(4) = serpcurns(ig,2,4,iz)
         Js(5) = serpcurns(ig,3,5,iz)
         Js(6) = -serpcurns(ig,1,6,iz)
         phis(1) = serpphis(ig,1,1,iz)
         phis(2) = serpphis(ig,3,2,iz)
         phis(3) = serpphis(ig,2,3,iz)
         phis(4) = serpphis(ig,2,4,iz)
         phis(5) = serpphis(ig,3,5,iz)
         phis(6) = serpphis(ig,1,6,iz)
         phis(7) = serpphis(ig,1,3,iz)
         phis(8) = serpphis(ig,3,1,iz)
         phis(9) = serpphis(ig,2,2,iz)
         phis(10)= serpphis(ig,1,4,iz)
         phis(11)= serpphis(ig,3,6,iz)
         phis(12)= serpphis(ig,2,5,iz)
         !x = hetphic(ig,:,iz)
         
        ! D = D(nod)
        ! x = x(cor)
        fc = fc(dir,nod)
        fs = fs(dir,nod)
        ! Js = Js(nod)
        ! phis(1:6) = phis(nod)
         
         D(2)   = D(5)
         D(3)   = D(6)
         Js(2)  = serpcurns(ig,1,5,iz)
         Js(3)  = -serpcurns(ig,3,6,iz)
         Js(8)  = -serpcurns(ig,3,5,iz)
         Js(10) = -serpcurns(ig,1,6,iz)
         phis(2)  = serpphis(ig,1,5,iz)
         phis(3)  = serpphis(ig,3,6,iz)
         phis(8)  = serpphis(ig,3,5,iz)
         phis(9)  = serpphis(ig,2,5,iz)
         phis(10) = serpphis(ig,1,6,iz)
         x(1)   = hetphic(ig,7,iz)
         x(2)   = hetphic(ig,5,iz)
         x(3)   = hetphic(ig,4,iz)
         x(4)   = hetphic(ig,6,iz)        
         
         A(1) = 2.0*sqrt(3.0D0)*side_tri*(alpha(8)+alpha(10)) + 22.0D0*D(2)/fc(1,5) + 22.0D0*D(3)/fc(1,6)
         A(2) = D(2)/fc(2,5)
         A(3) = D(3)/fc(2,6) + D(2)/fc(3,5)
         A(4) = D(3)/fc(3,6)
         
         RHS = -sqrt(3.0D0)*side_tri*(2.0*Js(2) + 2.0*Js(3) + Js(8) - Js(10))
         RHS = RHS - 24*D(2)*phis(2)/fs(1,5) - 24*D(3)*phis(3)/fs(1,6)
         RHS = RHS + 24*D(2)*phis(9)/fs(2,5) + 24*D(3)*phis(10)/fs(2,6)
         RHS = RHS + 24*D(2)*phis(8)/fs(3,5) + 24*D(3)*phis(9)/fs(3,6)
         
         RHS_test = 0.0
         DO i = 1,4
             RHS_test = RHS_test + A(i)*x(i)
         END DO
         
         rel_error = (RHS_test - RHS)/RHS      
      
      
      END SUBROUTINE cpb2_test
      
      SUBROUTINE print_serp_cpflux
      USE TriIndexM, ONLY: cpntri,corntri
      ! print boundary corner point flux using surface currents from Serpent
      INTEGER(sik) :: i,j,iz,ig,icp,ic,ixy
      INTEGER(sik) :: node,node1,node2,corn,corn1,corn2,side,side1,side2
      REAL(sdk)    :: tmp_cpflux(mg,ncorn,nz),serp_cpflux(mg,3,nxy,nz)
      CHARACTER(len=100) :: file_name
      LOGICAL      :: file_exists
        
      
        file_name = "serp_cpflux.txt"
        INQUIRE(FILE=file_name, EXIST=file_exists)
        IF (file_exists) THEN
        OPEN(94,file=file_name,status='old')
        ELSE
            OPEN(94,file=file_name,status='new')
        END IF   
        
        DO iz = 1,nz
            DO icp = 1,ncorn
                IF (cpntri(icp) == 2) THEN
                    node1 = 0
                    node2 = 0
                    DO i = 1,6
                        IF (corntri(icp,i) > 0) THEN
                            IF (node1 == 0) THEN
                                node1 = corntri(icp,i)
                            ELSE
                                node2 = corntri(icp,i)
                            END IF
                        END IF
                    END DO
                    
                    corn1 = 0
                    corn2 = 0
                    DO i = 1,3
                        IF (tricorn(node1,i) == icp) corn1 = i
                        IF (tricorn(node2,i) == icp) corn2 = i
                    END DO
                    
                    DO ig = 1,mg
                        tmp_cpflux(ig,icp,iz) = ABS(serpcurns(ig,corn2,node1,iz)) + ABS(serpcurns(ig,corn1,node2,iz))
                    END DO
                    
                ELSE IF (cpntri(icp) == 4) THEN
                    node1 = 0
                    node2 = 0
                    DO i = 1,6
                        IF (corntri(icp,i) > 0) THEN
                            node = corntri(icp,i)
                            DO j = 1,3
                                IF (trineigh(node,j) == 0) THEN
                                    IF (node1 == 0) THEN
                                        node1 = node
                                        side1 = j
                                    ELSE
                                        node2 = node
                                        side2 = j
                                    END IF
                                END IF
                            END DO
                        END IF
                    END DO
                    
                    DO ig = 1,mg
                        tmp_cpflux(ig,icp,iz) = ABS(serpcurns(ig,side1,node1,iz)) + ABS(serpcurns(ig,side2,node2,iz))
                    END DO
                    
                ELSE
                    tmp_cpflux(:,icp,iz) = 1.0D0
                END IF
                
                DO i = 1,6
                    IF (corntri(icp,i)>0) THEN
                        node = corntri(icp,i)
                        DO j = 1,3
                            IF (tricorn(node,j) == icp) corn = j
                        END DO
                        serp_cpflux(:,corn,trixsid(node,iz),iz) = tmp_cpflux(:,icp,iz)
                    END IF
                END DO
            
            END DO
        END DO
        
            
        ! print to file
        DO iz = 1,nz
            DO ixy = 1,nxy
                DO ic = 1,3
                    WRITE(94,*) serp_cpflux(:,ic,ixy,iz)
                END DO
            END DO
        END DO
   
      END SUBROUTINE print_serp_cpflux
      

END MODULE SerpentSolutionM