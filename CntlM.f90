MODULE CntlM
      USE IntrType, ONLY: sdk, sik
      
      IMPLICIT NONE
      
      INTEGER(sik) :: linearsolver,ngmresvec,iptype,precond

CONTAINS
    SUBROUTINE InitCntl
    IMPLICIT NONE

        linearsolver=2
        ngmresvec=50
        iptype=0    
    
    END SUBROUTINE InitCntl
    
END MODULE CntlM