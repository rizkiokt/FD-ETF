MODULE ItrcntlM
      USE IntrType, ONLY: sdk, sik
      
      IMPLICIT NONE
      
      REAL(sdk)    :: reigvd,reigv,reigvs,eigv,effk,erreig,r2ob2,eshift,eshift0,rerrl2,errlinf
      LOGICAL      :: flageig,flagl2,flaglinf,NFDconv,ALLPOSFLUX,flagr2,flagerf
      REAL(sdk)    :: psil1d,psil1,errl2d,errl2,domr,epsl2,epslinf,epseig,epserf,epsnodal,epsr2,epscpb
      INTEGER(sik) :: ninitout, ninmax, noutmax, totcpb
      REAL(sdk)    :: r2,b2,r20
      LOGICAL      :: NodalConv, NodalRedu,flagneut
      INTEGER(sik) :: ntnodal,NnlpTH,nintot,MGcy,targetk
      INTEGER(sik), POINTER :: NnlpNodal, nupdcy
CONTAINS
    SUBROUTINE InitItrcntl
    IMPLICIT NONE
    
       reigvd=1.0
       reigv=1.0
       reigvs=0.0
       eigv=1.0
       effk=1.0
       erreig=0.0
       r2ob2=1.0
       nintot=0
       
       eshift=1.0-0.04
       eshift0=10.0
       epserf=0.005
       epslinf=1.0E-5
       epsnodal=1.0E-7
       
       flageig=.TRUE.
       flagl2=.TRUE.
       flaglinf=.TRUE.
       NFDconv=.FALSE.
       ALLPOSFLUX=.TRUE.
       flagr2=.FALSE.
       NodalConv=.FALSE.
       NodalRedu=.FALSE.
       flagneut=.FALSE.
       
      ! psil1d=1.0
      ! psil1=1.0
      ! errl2d=1.0
      ! errl2=1.0
      ! domr=1.0
       epsl2=1.0E-6
       epseig=1.0E-7
       epsr2=0.001
       
       ninitout=5
       ninmax=100
       noutmax=1000
       NnlpTH=5
       MGcy = 3
       !nupdcy = 5
       !NnlpNodal=>nupdcy
       
    
    END SUBROUTINE InitItrcntl
      
END MODULE ItrcntlM
