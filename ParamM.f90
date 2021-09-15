MODULE ParamM
   USE IntrType, ONLY: sik
   IMPLICIT NONE

    ! XSEC input
    ! Number of energy groups 
    INTEGER(sik) :: ng,mg,mgb(2), mge(2)
    CHARACTER(LEN=10) :: nodal_kernel
    INTEGER(sik) :: cmfdopt, cmfd_coarse_grp_itr, cmfd_fine_grp_itr

END MODULE ParamM  