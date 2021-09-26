Module InputReadM
   USE IntrType
   USE IOVarM
   USE ParamM
   USE GeomM
   USE SerpentSolutionM
   USE ItrcntlM
   USE XsecM
   USE CntlM
   
   IMPLICIT NONE
   
CONTAINS
    
   SUBROUTINE InputRead
   IMPLICIT NONE
      
      CALL CntlCardRead
      CALL ParamCardRead
      CALL XsecCardRead
      CALL GeomRead
      CALL DEPLCardRead
      CALL Indexing
      CALL AreaCalc
      
   END SUBROUTINE InputRead
   
   SUBROUTINE CntlCardRead
      IMPLICIT NONE
      CHARACTER(LEN=200)           :: line
      CHARACTER(LEN=15)            :: word, flag
      INTEGER(sik) :: tmp, i 
      
       is_gen_ETF = .FALSE.
       DO
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "XS_num") THEN
             READ(line,*) word, xs_num
         END IF
         
         IF (word == "gen_ETF") THEN
             READ(line,*) word, flag
             IF (flag == 'T') THEN
                 is_gen_ETF = .TRUE.
                 READ(line,*) word, flag, serp_file
             ELSE 
                 is_gen_ETF = .FALSE.
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
         IF (word == "nodal_kernel") THEN
             READ(line,*) word, nodal_kernel
         END IF
         IF (word == "wielandt") THEN
             READ(line,*) word, eshift, eshift0, targetk
         END IF
         IF (word == "lsolver") THEN
             READ(line,*) word, linearsolver, precond, ngmresvec
         END IF       
         IF (word == "conv_ss") THEN
             READ(line,*) word, epseig, epsl2, epslinf
         END IF      
         IF (word == "n_iters_ss") THEN
             READ(line,*) word, ninmax, noutmax
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
    
   SUBROUTINE GeomRead
      IMPLICIT NONE
   
    !  CHARACTER(LEN=50),INTENT(IN) ::input
      CHARACTER(LEN=200)           :: line
      CHARACTER(LEN=10)            :: word,ntype
      INTEGER(sik)                 :: i,j,k,nzeroes,jj,l, irow, icol
      CHARACTER(LEN=4)             :: atype
      INTEGER(sik)                 :: nzbr,nztr,count
      INTEGER(sik), ALLOCATABLE    :: tmp1d(:), tmp2d(:,:)
   
      ! Search line containing number of rows and read
      DO 
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "geo_dim") THEN
            READ(line,*) word,nx,ny,nz,nzbr,nztr
            EXIT
         END IF
      END DO
      
      nxy = nx*ny
      kfs = nzbr+1
      kfe = nz-nztr
      
      ! Search line containing radial core confirugration
      DO 
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "rad_conf") EXIT
      END DO
      
      ! Read assembly configuration row by row
      ALLOCATE(tmp1d(nx))
      ALLOCATE(radconf(nx,ny))
      DO irow = 1,ny
          READ(input_unit,*) tmp1d
          DO icol = 1,nx
              radconf(icol,irow) = tmp1d(icol)
          END DO
      END DO
      DEALLOCATE(tmp1d)
      
      ! Read Grid Size
      ALLOCATE(grid_x(nx),grid_y(ny),grid_z(nz))
      DO 
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "grid_x") THEN
            READ(line,*) word,grid_x
            EXIT
         END IF
      END DO
      DO 
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "grid_y") THEN
            READ(line,*) word,grid_y
            EXIT
         END IF
      END DO
      DO 
         READ(input_unit,"(a)") line
         READ(line,*) word
         IF (word == "grid_z") THEN
            READ(line,*) word,grid_z
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
      ALLOCATE(alxlf(mg),alxrf(mg),alylf(mg),alyrf(mg),alzlf(mg),alzrf(mg))
      
      IF (ibcx(1)==0) THEN ! Reflective
          alxlf = 0.0
          alxrf = 0.0
          alylf = 0.0
          alyrf = 0.0
      ELSE IF (ibcx(1)==2) THEN ! Vacuum
          alxlf = 0.5
          alxrf = 0.5
          alylf = 0.5
          alyrf = 0.5
      END IF
      IF (ibcz(1)==0) THEN ! Reflective
          alzlf = 0.0
      ELSE IF (ibcz(1)==2) THEN ! Vacuum
          alzlf = 0.5
      END IF      
      IF (ibcz(2)==0) THEN ! Reflective
          alzrf = 0.0
      ELSE IF (ibcz(2)==2) THEN ! Vacuum
          alzrf = 0.5
      END IF 
      
      ! Read Axial XS ID
      ALLOCATE(tmp2d(nxy,nz))
      ALLOCATE(tmp1d(nxy))
      ALLOCATE(lftol(nxy))
      ALLOCATE(lrtol(nxy))
      tmp1d = 0
      tmp2d = 0
      nfuel = 0
      lftol = 0
      count = 0
      DO 
         READ(input_unit,"(a)") line
         READ(line,*) word 
         IF (word /= "node_type") EXIT
         nntype = nntype+1
         READ(line,*) word, i, tmp2d(i,:), ntype
         tmp1d(nntype) = i
         IF (ntype == "FUEL") THEN
             nfuel = nfuel+1
             lftol(nfuel) = i
         ELSE
             nrefl = nrefl+1
             lrtol(nrefl) = i
         END IF
       
      END DO
      
      ALLOCATE(comp(nntype,nz))
      comp = tmp2d(1:nntype,:)
      nodetype = tmp1d(1:nntype)
      
   !   CLOSE(input_unit)
   
   END SUBROUTINE GeomRead
   
   SUBROUTINE DEPLCardRead
   
      IMPLICIT NONE
      CHARACTER(LEN=200)           :: line
      CHARACTER(LEN=10)            :: word  
      INTEGER(sik)                 :: i
      
      CALL allocIOvar(xs_num)
      
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
   
   SUBROUTINE Indexing
   
    IMPLICIT NONE
    
    INTEGER(sik) :: i,inode,ixy, icol, irow, ix,iy, w,s,e,n
    INTEGER(sik), ALLOCATABLE :: nodes2d(:,:)
        
    ! XS data for each node
    ALLOCATE(xsid(nxy,nz))
    DO i=1,nntype
        inode = nodetype(i)
        DO ixy=1,nxy
            ix = MOD(ixy,nx)
            IF (ix == 0) ix = nx
            iy = ixy/ny + 1
            IF (MOD(ixy,ny) == 0) iy = iy-1
            IF (radconf(ix,iy) == inode) THEN
                xsid(ixy,:) = comp(i,:)
            END IF
        END DO
    END DO  
    
    ! 2d array of nodes numbering
    ALLOCATE(nodes2d(nx,ny))
    i = 0
    DO iy=1,ny
        DO ix=1,nx
            i = i + 1
            nodes2d(ix,iy) = i
        END DO
    END DO
    
    ! Neighboring nodes in radial directions
    ALLOCATE(rad_neigh(nxy,ns))
    w = 1
    s = 2
    e = 3
    n = 4
    DO ixy=1,nxy
        DO ix=1,nx
            DO iy=1,ny
                IF (nodes2d(ix,iy) == ixy) THEN
                    irow = iy
                    icol = ix
                END IF
            END DO
        END DO
        
        ! West side neighbor
        IF (icol == 1) THEN
            rad_neigh(ixy,w) = 0
        ELSE
            rad_neigh(ixy,w) = nodes2d(icol-1,irow)
        END IF
        
        ! South side neighbor
        IF (irow == ny) THEN
            rad_neigh(ixy,s) = 0
        ELSE
            rad_neigh(ixy,s) = nodes2d(icol,irow+1)
        END IF
        
        ! East side neighbor
        IF (icol == nx) THEN
            rad_neigh(ixy,e) = 0
        ELSE
            rad_neigh(ixy,e) = nodes2d(icol+1,irow)
        END IF       
        
        ! North side neighbor
        IF (irow == 1) THEN
            rad_neigh(ixy,n) = 0
        ELSE
            rad_neigh(ixy,n) = nodes2d(icol,irow-1)
        END IF        
        
    END DO                 
        
    END SUBROUTINE Indexing
    
    SUBROUTINE AreaCalc
    IMPLICIT NONE
        
        INTEGER(sik) :: ix,iy,iz,is,ixy,w,s,e,n,b,t
        
        ! Define hx and hy in terms of node xy
        ALLOCATE(hx(nxy),hy(nxy),hz(nz))
        ixy = 0
        DO iy=1,ny
            DO ix=1,nx
                ixy = ixy+1
                hx(ixy) = grid_x(ix)
                hy(ixy) = grid_y(iy)
            END DO
        END DO
        hz = grid_z
         
        ! Area calculation
        ALLOCATE(area(nxy,ns,nz))
        w = 1
        s = 2
        e = 3
        n = 4
        b = 5
        t = 6
        DO iz=1,nz
            DO ixy=1,nxy
                area(ixy,w,iz) = hy(ixy)*hz(iz)  ! west
                area(ixy,s,iz) = hx(ixy)*hz(iz)  ! south
                area(ixy,e,iz) = hy(ixy)*hz(iz)  ! east
                area(ixy,n,iz) = hx(ixy)*hz(iz)  ! north
                area(ixy,b,iz) = hx(ixy)*hy(ixy) ! bottom
                area(ixy,t,iz) = hx(ixy)*hy(ixy) ! top
            END DO
        END DO                                   
                    
    END SUBROUTINE AreaCalc

END MODULE InputReadM