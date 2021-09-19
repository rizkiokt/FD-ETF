MODULE GeomM
      USE IntrType, ONLY: sdk, sik
      
      IMPLICIT NONE
      
      INTEGER(sik)                          :: n,nx,ny,nxy,nz
      REAL(sdk),  DIMENSION(:), ALLOCATABLE       :: alxlf,alxrf,alylf,alyrf,alzlf,alzrf
      INTEGER(sik), DIMENSION(:,:), ALLOCATABLE  :: radconf,axialxsid,xsid
      REAL(sdk), ALLOCATABLE                :: hx(:),hy(:),hz(:)
      INTEGER(sik)                          :: ibcx(2),ibcy(2),ibcz(2)
      REAL(sdk),ALLOCATABLE                 :: volnode(:,:), areax(:), areay(:), areaz(:)
      INTEGER(sik)                          :: kfs, kfe, nfuel, nrefl
      INTEGER(sik), ALLOCATABLE             :: lftol(:),lrtol(:)
   
END MODULE GeomM