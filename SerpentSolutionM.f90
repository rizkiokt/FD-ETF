MODULE SerpentSolutionM
      USE IntrType, ONLY: sdk, sik
      USE GeomM, ONLY: n, nz, nxy, ibcx, ibcy, ibcz, rad_neigh, area, xsid
      USE ParamM, ONLY: mg,ng
      USE XSecM, ONLY: xs_num
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
          ALLOCATE(vv(nvv),vs(nvs),vc(nvc))
          
      END SUBROUTINE InitialSerpent
    
      SUBROUTINE SerpentSolution
         IMPLICIT NONE
         INTEGER(sik)       :: i, j, ixy, iz, is, ig, ic, iis, iic, icp
         CHARACTER(LEN=20)  :: word
         CHARACTER(LEN=15000):: line
         REAL(sdk)          :: surf_area
         INTEGER(sik)       :: il, ir, count, isurf, locsurf(3), locxy, locz(3), locg(3)
         LOGICAL            :: lfound

         ! Open Serpent result files and extract required data
         OPEN (UNIT=55, FILE=serp_file, STATUS='old', ACTION='read')
                 
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
         END DO

         DO iz = 1,nz
             DO ixy = 1,nxy
                 i = xsid(ixy,iz)
                 DO ig = 1,mg
                     serpflux(ig,ixy,iz) = tempflux(i,ig)
                 END DO
             END DO
         END DO
         
        DO iz = 1,nz
             DO ixy = 1,nxy
                 i = xsid(ixy,iz)
                 DO is = 1,ns
                     IF ((is == 5) .OR. (is == 6)) THEN
                         surf_area = area(ixy,is,iz)
                         radial = .FALSE.
                     ELSE 
                         surf_area = area(ixy,is,iz)
                         radial = .TRUE.
                     END IF
                     DO ig = 1,mg
                         j = (is-1)*mg+ig
                         ! Surface currents in Serpent are area integrated values, therefore:
                         serpincurns(ig,is,ixy,iz) = tempincurns(i,j)/surf_area
                         serpoutcurns(ig,is,ixy,iz) = tempoutcurns(i,j)/surf_area
                         serpcurns(ig,is,ixy,iz) = tempcurns(i,j)/surf_area
                         !IF (is == 5) serpcurns(ig,is,ixy,iz) = -serpcurns(ig,is,ixy,iz)        
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
            DO is = 1,ns-2
                IF (rad_neigh(ixy,is) == 0 .AND. ibcx(1) == 2) THEN
                    DO iz = 1,nz
                        DO ig = 1,mg
                            serpphis(ig,is,ixy,iz) = ABS(2.0*serpcurns(ig,is,ixy,iz))
                        END DO
                    END DO
                END IF
            END DO
        END DO
                         
      END SUBROUTINE SerpentSolution

END MODULE SerpentSolutionM