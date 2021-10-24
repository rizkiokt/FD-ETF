!  FDETF.f90 
!
!  FUNCTIONS:
!  FDETF - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: FDETF
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

    program FDETF
    USE InputReadM, ONLY: InputRead
    USE XsecM, ONLY: AllocXsec
    USE ItrcntlM, ONLY: InitItrcntl
    USE CntlM, ONLY: InitCntl
    USE SerpentSolutionM, ONLY: InitialSerpent, SerpentSolution
    USE GenETFMinM, ONLY: InitialGenETF, GenETFDriver
    USE IOVarM, ONLY: output_unit

    implicit none

    ! Variables

    ! Body of FD-ETF
    print *, 'Starting Program'
    
    print *, '1. Reading Input File'
    CALL Intro
    WRITE(output_unit,*) 'Starting Program'
    WRITE(output_unit,*) '1. Reading Input File'
    CALL InputRead
    
    
    print *, '2. Initializating Variables'
    WRITE(output_unit,*) '2. Initializating Variables'

    CALL AllocXsec
    CALL InitItrcntl
    CALL InitCntl
    CALL InitialSerpent
    CALL InitialGenETF
    
    print *, '3. Reading Cross-section Files'
    WRITE(output_unit,*) '3. Reading Cross-section Files'

    CALL PMAXSRead
    
    print *, '4. Reading Heterogeneous Solutions From Serpent'
    WRITE(output_unit,*) '4. Reading Heterogeneous Solutions From Serpent'

    CALL SerpentSolution
    
    print *, '5. Computing Equivalent Transport Cross-sections'
    WRITE(output_unit,*) '5. Computing Equivalent Transport Cross-sections'

    CALL LeakageCalc
    CALL GenETFDriver
    
    print *, '6. Updating Cross-section Files'
    WRITE(output_unit,*) '6. Updating Cross-section Files'
    CALL PMAXSRewrite
    
    print *, 'Exiting Program'
    WRITE(output_unit,*) 'Exiting Program'
    
    PAUSE

    end program FDETF

