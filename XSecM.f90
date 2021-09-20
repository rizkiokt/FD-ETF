MODULE XsecM
      USE IntrType, ONLY: sdk, sik
    
      IMPLICIT NONE
      !! Multigroup constants
      ! Indexing xschif,xsnff, and xstf: (group index, XY plane index, axial index)
    
      ! fission spectrum (chi)
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xschif
     
      ! nu-fission cross section
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xsnff 
      
      ! kappa-fission cross section
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xskff 
      
      ! absorption cross-section
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xsaf
      
      ! transport cross-section
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xstrf
      
      ! total cross section
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xstf

      ! Standard diffusion coefficients
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xsdf
      
      ! Indexing of xsscat: (pre-scattering group index, post-scattering group index, XY plane index, axial index)
      ! the scattering matrix
      REAL(sdk), POINTER, DIMENSION(:,:,:,:):: xsscat  
           
      !! 2-group constants for CG-CMFD
      ! Indexing xschif,xsnff, and xstf: (group index, XY plane index, axial index)
    
      ! fission spectrum (chi)
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xschi
     
      ! nu-fission cross section
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xsnf 
      
      ! kappa-fission cross section
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xskf 
      
      ! absorption cross-section
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xsa
      
      ! transport cross-section
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xstr
      
      ! total cross section
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xst

      ! Standard diffusion coefficients
      REAL(sdk), POINTER, DIMENSION(:,:,:):: xsd
          
      REAL(sdk), POINTER, DIMENSION(:,:):: xss 
       
      REAL(sdk), POINTER, DIMENSION(:,:,:):: rvdelt
      
      INTEGER(sik) :: xs_num

      ! Cross-section substitute data
      CONTAINS
      SUBROUTINE AllocXsec
         USE GeomM, ONLY:nz, nxy
         USE ParamM, ONLY:mg,ng
         IMPLICIT NONE

         
         ALLOCATE(xschi(ng,nxy,nz))
         ALLOCATE(xsnf(ng,nxy,nz))
         ALLOCATE(xskf(ng,nxy,nz))
         ALLOCATE(xsa(ng,nxy,nz))
         ALLOCATE(xstr(ng,nxy,nz))
         ALLOCATE(xst(ng,nxy,nz))
         ALLOCATE(xss(nxy,nz)) ! remove upscattering
         ALLOCATE(xsd(ng,nxy,nz))
         
         xschi(1,:,:)= 1.0
         xschi(2,:,:)= 0.0
    IF(mg==ng) THEN  
        xschif=>xschi
        xsnff =>xsnf
        xskff =>xskf
        xsaf  =>xsa
        xstrf =>xstr
        xstf  =>xst
        xsdf  =>xsd
    ELSE    
         ALLOCATE(xschif(mg,nxy,nz))
         ALLOCATE(xsnff(mg,nxy,nz))
         ALLOCATE(xskff(mg,nxy,nz))
         ALLOCATE(xsaf(mg,nxy,nz))
         ALLOCATE(xstrf(mg,nxy,nz))
         ALLOCATE(xstf(mg,nxy,nz))
         ALLOCATE(xsdf(mg,nxy,nz))
     ENDIF    
         ALLOCATE(xsscat(mg,mg,nxy,nz))
         
      END SUBROUTINE AllocXsec
END MODULE XsecM
