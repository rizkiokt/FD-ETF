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
    USE GenETFM, ONLY: InitialGenETF, GenETFDriver

    implicit none

    ! Variables

    ! Body of FD-ETF
    print *, 'Starting Program'
    
    print *, '1. Reading Input File'
    CALL InputRead
    
    print *, '2. Initializating Variables'
    CALL AllocXsec
    CALL InitItrcntl
    CALL InitCntl
    CALL InitialSerpent
    CALL InitialGenETF
    
    print *, '3. Reading Cross-section Files'
    CALL PMAXSRead
    
    print *, '4. Reading Heterogeneous Solutions From Serpent'
    CALL SerpentSolution
    
    print *, '5. Computing Equivalent Transport Cross-sections'
    CALL GenETFDriver
    
    print *, '6. Updating Cross-section Files'
    CALL PMAXSRewrite
    
    print *, 'Exiting Program'

    end program FDETF

