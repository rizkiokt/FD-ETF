MODULE IOVarM
    USE IntrType, ONLY: sdk, sik
    
    IMPLICIT NONE
    
    ! File unit
    INTEGER(sik), PARAMETER    :: input_unit=99, output_unit = 66
    
    ! DEPL input
    ! PMAXS files index and name
    INTEGER(sik), ALLOCATABLE :: PMAXS_ind(:), PMAXS_i_str(:)
    CHARACTER(LEN=100), ALLOCATABLE :: PMAXS_name(:)
    INTEGER(sik),PARAMETER :: PMAXS_unit=87, PMAXS_ETF_unit=88
    LOGICAL  :: is_gen_ETF
    CHARACTER(LEN=100) :: xsETF_dir

CONTAINS
    
    SUBROUTINE  allocIOvar(N)
    IMPLICIT NONE
       INTEGER :: N
       
       ALLOCATE(PMAXS_ind(N))
       ALLOCATE(PMAXS_i_str(N))
       ALLOCATE(PMAXS_name(N))
    END SUBROUTINE  allocIOvar
    
END MODULE IOVarM
    
    