Module InputReadM
   USE IntrType
   USE IOVarM
   USE ParamM
   USE TriGeomM
   USE TriIndexM
   USE SerpentSolutionM
   USE SerpentSubmeshM
   USE ItrcntlM
   USE XsecM
   USE CntlM
   
   IMPLICIT NONE
   
   INTEGER(sik), PARAMETER    :: input_unit=99

CONTAINS
    
   SUBROUTINE InputRead
   IMPLICIT NONE
      
      CALL CntlCardRead
      CALL ParamCardRead
      CALL XsecCardRead
      CALL TriGeomRead
      CALL IndexingInitial
      CALL TriIndexing
      CALL DEPLCardRead
      
   END SUBROUTINE InputRead
   
   SUBROUTINE CntlCardRead
      IMPLICIT NONE
      CHARACTER(LEN=200)           :: line
      CHARACTER(LEN=15)            :: word
      INTEGER(sik) :: tmp, i 
       isADF = .FALSE.
       isCDF = .FALSE.
       isEddi = .FALSE.
       DO
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "XS_num") THEN
             READ(line,*) word, xs_num
         END IF

         IF (word == "adf") THEN
             READ(line,*) word, tmp
             IF (tmp > 0) THEN
                 isADF = .TRUE.
             ELSE 
                 isADF = .FALSE.
             END IF
         END IF
         IF (word == "cdf") THEN
             READ(line,*) word, tmp
             IF (tmp > 0) THEN
                 isCDF = .TRUE.
             ELSE 
                 isCDF = .FALSE.
             END IF
         END IF
         IF (word == "eddi") THEN
             READ(line,*) word, tmp
             IF (tmp > 0) THEN
                 isEddi = .TRUE.
             ELSE 
                 isEddi = .FALSE.
             END IF
         END IF
         IF (word == "refe") THEN
             READ(line,*) word, tmp
             IF (tmp > 0) THEN
                 isRefe = .TRUE.
                 READ(line,*) word, tmp, serp_file
                 IF (isCDF) READ(line,*) word, tmp, serp_file, cpflux_file
             ELSE 
                 isRefe = .FALSE.
             END IF
         END IF  
         IF (word == "serp_proc") THEN
             READ(line,*) word, tmp
             IF (tmp > 0) THEN
                 isSerpProc = .TRUE.
                 READ(line,*) word, tmp
             ELSE 
                 isSerpProc = .FALSE.
             END IF
         END IF 
         IF (word == "int_flx") THEN
             READ(line,*) word, tmp
             IF (tmp > 0) THEN
                 isIntflx = .TRUE.
                 READ(line,*) word, tmp, nsubmesh
             ELSE 
                 isIntflx = .FALSE.
             END IF
         END IF
         IF (word == "ref_intflx") THEN
             READ(line,*) word, tmp
             IF (tmp > 0) THEN
                 isRef_intflx = .TRUE.
                 READ(line,*) word, tmp, serp_sub_file
                 ALLOCATE(univ_submesh(xs_num,nsubmesh))
                 DO i = 1,xs_num
                     READ(input_unit,"(a)") line
                     READ(line,*) univ_submesh(i,:)
                 END DO
             ELSE 
                 isRef_intflx = .FALSE.
             END IF
         END IF
         IF (word == "refl_solver") THEN
             READ(line,*) word, tmp
             IF (tmp > 0) THEN
                 isReflSolver = .TRUE.
                 READ(line,*) word, tmp
             ELSE 
                 isReflSolver = .FALSE.
             END IF
         END IF 
                
         IF (word == "PARAM") EXIT
         
      END DO    
      
   END SUBROUTINE CntlCardRead
         
   
   SUBROUTINE ParamCardRead
      IMPLICIT NONE
      CHARACTER(LEN=200)           :: line
      CHARACTER(LEN=10)            :: word   
      
      ! Read PARAM card
      DO
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "nodal_kern") THEN
             READ(line,*) word, nodal_kernel
         END IF
         IF (word == "cmfd") THEN
             READ(line,*) word, cmfdopt, cmfd_coarse_grp_itr, cmfd_fine_grp_itr
         END IF
         IF (word == "wielandt") THEN
             READ(line,*) word, eshift, eshift0, targetk
         END IF
         IF (word == "lsolver") THEN
             READ(line,*) word, linearsolver, precond, ngmresvec
         END IF       
         IF (word == "nodal_ss") THEN
             READ(line,*) word, epserf, epsnodal
         END IF
         IF (word == "conv_ss") THEN
             READ(line,*) word, epseig, epsl2, epslinf
         END IF      
         IF (word == "n_iters_ss") THEN
             READ(line,*) word, ninmax, noutmax
         END IF   
         IF (word == "nlupd_ss") THEN
             READ(line,*) word, nupdcy, ninitout, NnlpTH
         END IF    
         IF (word == "XSEC") EXIT
      END DO    
      
   
   END SUBROUTINE ParamCardRead
   
   SUBROUTINE XsecCardRead
      IMPLICIT NONE
      CHARACTER(LEN=200)           :: line
      CHARACTER(LEN=10)            :: word
            
     ! Search group specification
      DO 
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "group_spec") EXIT
      END DO
   
     ! Read group specification and store
      ng = 2
      READ(line,*) word, mg, mge(1)
      mge(2) = mg
      mgb(1) = 1
      mgb(2) = mge(1)+1
         
   END SUBROUTINE XsecCardRead    
    
   SUBROUTINE TriGeomRead
      IMPLICIT NONE
   
    !  CHARACTER(LEN=50),INTENT(IN) ::input
      CHARACTER(LEN=200)           :: line
      CHARACTER(LEN=10)            :: word
      INTEGER(sik)                 :: i,j,k,nzeroes,jj,l
      CHARACTER(LEN=4)             :: atype
      INTEGER(sik)                 :: nzbr,nztr
   
      ! Open the input file containing the geometry assembly
     ! OPEN (UNIT=input_unit, FILE=input, STATUS='old', ACTION='read')
      
      ! Search line containing number of rows and read
      !!!! Need to fix the part of code for opening and reading the input files
      DO 
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "geo_dim") THEN
            READ(line,*) word,nrow,nz,nzbr,nztr
            EXIT
         END IF
      END DO
      
      kfs = nzbr+1
      kfe = nz-nztr
      
      ! Calculate the number of hexagonal assemblies
      ! Array nhex contains number of hexagonal for each row
      ALLOCATE(nhex(nrow))
      IF (nrow == 1) THEN 
         nhex = 1
      ELSE IF (nrow == 3) THEN 
         nhex = (/2,3,2/)
      ELSE
         DO i = 1,(nrow-1)/2
            nhex(i) = i+(nrow-1)/2
            nhex(nrow-i+1) = nhex(i)
         END DO
         nhex((nrow+1)/2) = nrow
      END IF
      n = SUM(nhex)
   
      ! Search line containing radial core map
      DO 
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "rad_conf") EXIT
      END DO
   
     ! Read hexagonal ID and store
      ALLOCATE(hexid(n))
      READ(input_unit,*) hexid
      
      nzeroes = 0
      DO i = 1,size(hexid)
          IF(hexid(i) == 0) nzeroes = nzeroes + 1
      END DO
      
   
      ! Read map ID for each triangle inside each hexagon
      ! Read lines containing HEX_BLK
      i = 0
      ALLOCATE(hextriid(n,6))
      hextriid = 0
      DO 
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "HEX_BLK") THEN
            i = i + 1
            READ(line,*) word, k
            DO j = 1,n
               IF (k == hexid(j)) THEN
                   jj = j 
                   EXIT
               END IF
            END DO
            IF (j>n) CYCLE
            READ(input_unit,"(a)") line
            READ(line,*) hextriid(j,1), hextriid(j,2)
            READ(input_unit,"(a)") line
            READ(line,*) hextriid(j,3), hextriid(j,4)
            READ(input_unit,"(a)") line
            READ(line,*) hextriid(j,5), hextriid(j,6)
            DO j = 1,n
                IF (k == hexid(j)) THEN
                    DO l = 1,6
                        hextriid(j,l) = hextriid(jj,l)
                    END DO
                END IF
            END DO                
         END IF
         IF (i+nzeroes == size(hexid) .OR. i+nzeroes == MAXVAL(hexid)) EXIT
      END DO
      
      ! Read Grid Size (radial)
      DO 
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "grid_hex") THEN
            READ(line,*) word,hhex !hexagonal pitch, center to center distance,  side to side distance
            EXIT
         END IF
      END DO
      htri  = hhex/2.0D0         !triangle height
      hhalf   = htri/2.0D0       !half of triangle height
      hfd   = 2.0D0/3.0D0*htri     !triangle pitch, center to center distance, 2 times of center to side distance for finite difference
      Side_tri = 2.0D0/sqrt(3.0D0)*htri !triangle side length
      CurFact  = 4.0D0/3.0D0 * htri    ! 2/sqrt(3.0) *Side_tri
      rCurFact =1.0D0/CurFact
      CurFact4 = 2.0D0*htri ! sqrt(3.0D0)*side_tri
      rCurFact4 = 1.0D0/CurFact4
      
      ! Read Grid Size (axial)
      ALLOCATE(hz(nz)) 
      DO 
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "grid_z") THEN
            READ(line,*) word,hz(:)
            EXIT
         END IF
      END DO     
      
      ! Read Boundary conditions
      DO
          READ(input_unit,"(a)") line
          READ(line,*) word
          IF (word == "boun_cond") THEN
             READ(line,*) word,ibcx(1),ibcx(2),ibcy(1),ibcy(2),ibcz(1),ibcz(2)
             EXIT
          END IF
      END DO
      
      ! Albedo BC definition
      ALLOCATE(alxl(ng),alxr(ng),alyl(ng),alyr(ng),alzl(ng),alzr(ng))
      ALLOCATE(alxlf(mg),alxrf(mg),alylf(mg),alyrf(mg),alzlf(mg),alzrf(mg))
      
      IF (ibcx(1)==0) THEN ! Reflective
          alxlf = 0.0
          alxrf = 0.0
          alylf = 0.0
          alyrf = 0.0
          alxl  = 0.0
          alxr  = 0.0
          alyl  = 0.0
          alyr  = 0.0
      ELSE IF (ibcx(1)==2) THEN ! Vacuum
          alxlf = 0.5
          alxrf = 0.5
          alylf = 0.5
          alyrf = 0.5
          alxl  = 0.5
          alxr  = 0.5
          alyl  = 0.5
          alyr  = 0.5
      END IF
      IF (ibcz(1)==0) THEN ! Reflective
          alzlf = 0.0
          alzl  = 0.0
      ELSE IF (ibcz(1)==2) THEN ! Vacuum
          alzlf = 0.5
          alzl  = 0.5
      END IF      
      IF (ibcz(2)==0) THEN ! Reflective
          alzrf = 0.0
          alzr  = 0.0
      ELSE IF (ibcz(2)==2) THEN ! Vacuum
          alzrf = 0.5
          alzr  = 0.5
      END IF 
      
      ! Read Axial XS ID
      !!!! Need to fix the part of code for opening and reading the input files
      !OPEN (UNIT=input_unit, FILE=input, STATUS='old', ACTION='read')
      ALLOCATE(axialxsid(n*6,nz))
      ALLOCATE(xsid(n*6,nz))
      ALLOCATE(lftol(n*6))
      ALLOCATE(lrtol(n*6))
      axialxsid = 0
      nfuel = 0
      lftol = 0
      DO 
         READ(input_unit,"(a)") line
         READ(line,*) word 
         IF (word /= "assy_type") EXIT
         READ(line,*) word, i
         IF (i>n*6) CYCLE
         READ(line,*) word, i, axialxsid(i,:), atype
         IF (atype == "REFL") THEN
             nrefl = nrefl+1
             lrtol(nrefl) = i
         ELSE
              nfuel = nfuel+1
              lftol(nfuel) = i
         END IF         
      END DO
      xsid=axialxsid
      
   !   CLOSE(input_unit)
   
   END SUBROUTINE TriGeomRead
   
   SUBROUTINE DEPLCardRead
      USE TriIndexM, ONLY: ntriangle
   
      IMPLICIT NONE
      CHARACTER(LEN=200)           :: line
      CHARACTER(LEN=10)            :: word  
      INTEGER(sik)                 :: i
      
      CALL allocIOvar(ntriangle*nz)
      
     ! DO
     !    READ(input_unit,"(a)") line
     !    READ(line,*) word
     !    IF (word == "DEPL") THEN
     !        EXIT
     !    ELSE
     !        CYCLE
     !    END IF
     !    
     ! END DO
      
      i=0
      DO
         READ(input_unit,"(a)") line
         i = i + 1
         READ(line,*) word
         IF (TRIM(word) /= "PMAXS_F") EXIT
         READ(line,*) word,PMAXS_ind(i),PMAXS_name(i),PMAXS_i_str(i)
      END DO
      CLOSE(input_unit)
      
   END SUBROUTINE DEPLCardRead

END MODULE InputReadM