MODULE IOVarM
    USE IntrType, ONLY: sdk, sik
    
    IMPLICIT NONE

    ! DEPL input
    ! PMAXS files index and name
    INTEGER(sik), ALLOCATABLE :: PMAXS_ind(:), PMAXS_i_str(:)
    CHARACTER(LEN=100), ALLOCATABLE :: PMAXS_name(:)
    LOGICAL  :: is_gen_ETF

CONTAINS
    
    SUBROUTINE  allocIOvar(N)
    IMPLICIT NONE
       INTEGER :: N
       
       ALLOCATE(PMAXS_ind(N))
       ALLOCATE(PMAXS_i_str(N))
       ALLOCATE(PMAXS_name(N))
    END SUBROUTINE  allocIOvar
    
END MODULE IOVarM
    
    