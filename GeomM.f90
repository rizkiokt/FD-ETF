MODULE TriGeomM
      USE IntrType, ONLY: sdk, sik
      
      IMPLICIT NONE
      
      INTEGER(sik)                          :: n,nrow,nz,nxy
      INTEGER(sik),  DIMENSION(:), ALLOCATABLE   :: nhex,hexid
      REAL(sdk),  DIMENSION(:), ALLOCATABLE       :: alxl,alxr,alyl,alyr,alzl,alzr
      REAL(sdk),  DIMENSION(:), ALLOCATABLE       :: alxlf,alxrf,alylf,alyrf,alzlf,alzrf
      INTEGER(sik), DIMENSION(:,:), ALLOCATABLE  :: hextriid,axialxsid,xsid
      REAL(sdk)                             :: hhex     !hexagonal pitch, center to center distance, surface to surface distance
      REAL(sdk)                             :: htri     !triangle height
      REAL(sdk)                             :: hhalf    !half of  triangle height
      REAL(sdk)                             :: Side_tri !triangle side length
      REAL(sdk)                             :: CurFact, CurFact4  !Current factor  2*h/sqrt(3),sqrt(3)*h
      REAL(sdk)                             :: rCurFact, rCurFact4 !reverse of current fact
      REAL(sdk)                             :: hfd     !Triangle pitch, center to center distance, h in finite difference  
      REAL(sdk), ALLOCATABLE                :: hz(:)
      INTEGER(sik)                          :: ibcx(2),ibcy(2),ibcz(2)
      REAL(sdk),ALLOCATABLE                 :: volnode(:,:),arearad(:),areaz
      INTEGER(sik)                          :: kfs,kfe,nfuel, nrefl, nsubmesh
      INTEGER(sik), ALLOCATABLE             :: lftol(:),lrtol(:), univ_submesh(:,:)
   
END MODULE TriGeomM