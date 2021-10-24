SUBROUTINE PMAXSRewrite
    USE GenETFM, ONLY: xsid,nxy,nz
    USE ParamM, ONLY: mg
    USE XsecM, ONLY: xstrf, xsaf
    USE IOVarM   
    
    IMPLICIT NONE
    
    INTEGER(sik) :: i, j, k, ixy, iz
    REAL(sdk) :: xs_new(4*mg), xs_old(4*mg)
    LOGICAL      :: FUEL
    CHARACTER(LEN=200) :: word, PMAXS_ETF_name, fmt, stri, formng
    CHARACTER(LEN=100):: line
    LOGICAL :: file_exists

    
    DO iz = 1,nz
        DO ixy = 1,nxy
            i = xsid(ixy,iz)
            
            ! Open PMAXS file to write
            IF (nxy*nz < 100) THEN
                fmt = '(I2.2)'
            ELSE IF (nxy*nz >= 100 .AND. nxy*nz < 1000) THEN
                fmt = '(I3.3)'
            ELSE IF (nxy*nz >= 1000 .AND. nxy*nz < 10000) THEN
                fmt = '(I4.4)'
            ELSE
                fmt = '(I6.6)'
            END IF
            
            WRITE (stri,fmt) i
            PMAXS_ETF_name = TRIM(xsETF_dir)//'/N'//TRIM(stri)//'_ETF.PMAX'
            INQUIRE(FILE=PMAXS_ETF_name, EXIST=file_exists)
            IF (file_exists) THEN
                OPEN(PMAXS_ETF_unit,file=PMAXS_ETF_name,status='old')
            ELSE
                OPEN(PMAXS_ETF_unit,file=PMAXS_ETF_name,status='new')
            END IF   
            PRINT*, "Writing XS file ",TRIM(PMAXS_ETF_name)
            WRITE(output_unit,*) "Writing XS file ",TRIM(PMAXS_ETF_name)
            
            ! Open current PMAXS file and read
            OPEN(PMAXS_unit,file=PMAXS_name(i),status='old')
            FUEL=.TRUE.
   
            IF (mg == 2) THEN
                                
                READ(PMAXS_unit,"(a)") line
                WRITE(PMAXS_ETF_unit,"(a)") line
                READ(line,*) word, j, j, k
                IF (k == 0) FUEL=.FALSE.   
                
                DO WHILE(word .NE. "REFE")
                    READ(PMAXS_unit,"(a)") line
                    WRITE(PMAXS_ETF_unit,"(a)") line 
                    READ(line,*) word
                END DO
                
                READ(PMAXS_unit,"(a)") line
                READ(line,*) xs_old
                xs_new = xs_old
                xs_new(1) = xstrf(1,ixy,iz)
                xs_new(2) = xstrf(2,ixy,iz)
                xs_new(3) = xsaf(1,ixy,iz)
                xs_new(4) = xsaf(2,ixy,iz)
                
                formng='(1P008E12.5)'
                WRITE(PMAXS_ETF_unit,formng) xs_new
                
                READ(PMAXS_unit,"(a)") line
                WRITE(PMAXS_ETF_unit,"(a)") line
                
            END IF
            
        END DO
        
    END DO            

END SUBROUTINE PMAXSRewrite