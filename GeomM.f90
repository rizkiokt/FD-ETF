MODULE GeomM
      USE IntrType, ONLY: sdk, sik
      
      IMPLICIT NONE
      
      INTEGER(sik)                          :: n,nx,ny,nxy,nz, nntype
      REAL(sdk),  DIMENSION(:), ALLOCATABLE       :: alxlf,alxrf,alylf,alyrf,alzlf,alzrf
      INTEGER(sik), DIMENSION(:,:), ALLOCATABLE  :: radconf,axialxsid,xsid,rad_neigh, comp
      REAL(sdk), ALLOCATABLE                :: hx(:),hy(:),hz(:),grid_x(:),grid_y(:),grid_z(:),nodetype(:)
      INTEGER(sik)                          :: ibcx(2),ibcy(2),ibcz(2)
      REAL(sdk),ALLOCATABLE                 :: volnode(:,:), area(:,:,:)
      INTEGER(sik)                          :: kfs, kfe, nfuel, nrefl
      INTEGER(sik), ALLOCATABLE             :: lftol(:),lrtol(:)
      INTEGER(sik), PARAMETER               :: ns = 6, nsrad = 4 ! number of surfaces for each node
      INTEGER(sik), PARAMETER               :: nc = 4 ! number of radial corners for each node
   
END MODULE GeomM