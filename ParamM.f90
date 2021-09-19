MODULE ParamM
   USE IntrType, ONLY: sik
   IMPLICIT NONE

    ! XSEC input
    ! Number of energy groups 
    INTEGER(sik) :: ng,mg,mgb(2), mge(2)
    CHARACTER(LEN=10) :: nodal_kernel

END MODULE ParamM  