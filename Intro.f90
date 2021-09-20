SUBROUTINE Intro 
    USE IntrType, ONLY: sdk, sik
    USE IOVarM, ONLY: input_unit, output_unit
    
    IMPLICIT NONE

    INTEGER(sik), PARAMETER    :: lname=100
    CHARACTER(len=lname)  :: name, output_name
    INTEGER(sik) :: ioflg
    LOGICAL :: file_exists
    
    call getarg(1,name)    

    if (ichar(name(1:1)).eq.0 .or.ichar(name(1:1)).eq.32) name= 'input.inp'
    open(input_unit,file=name,status='old',form='formatted',IOSTAT=ioflg)

    IF (ioflg .NE. 0) THEN
       write(*,*)'Error - Input file was not found, please check input'
       STOP
    END IF    
    
    output_name = TRIM(name)//".out"
    INQUIRE(FILE=output_name, EXIST=file_exists)
    IF (file_exists) THEN
        OPEN(output_unit,file=output_name,status='old')
    ELSE
        OPEN(output_unit,file=output_name,status='new')
    END IF   

END SUBROUTINE Intro