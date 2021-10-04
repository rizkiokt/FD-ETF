MODULE LUDeflateM
       USE IntrType, ONLY: sdk, sik
       IMPLICIT NONE
       INTEGER(sik)               :: G
       INTEGER(sik), ALLOCATABLE  :: smallpivots(:)
       REAL(sdk),    ALLOCATABLE  :: y(:), z(:), Pb(:)
       REAL(sdk),    ALLOCATABLE  :: r(:),s(:), Vec(:)
CONTAINS

       SUBROUTINE LUDeflateInitial(systemsize)
          USE IntrType, ONLY: sdk, sik
          
          IMPLICIT NONE
         
          ! Declare variables:
       
          INTEGER(sik), INTENT(IN) :: systemsize
          
          G=systemsize
                    
          IF(ALLOCATED(y)) THEN
              IF(size(y) /= G) DEALLOCATE(y,z,Pb,r,s,Vec,smallpivots)
          END IF
          IF(.NOT. ALLOCATED(y)) THEN
              ALLOCATE(y(G),z(G),Pb(G),r(G),s(G),Vec(G))
              ALLOCATE(smallpivots(G))
          END IF             
          
       END SUBROUTINE LUDeflateInitial
          
       SUBROUTINE LUDeflate(A,x,b)
          USE IntrType, ONLY: sdk, sik
          
          IMPLICIT NONE
         
          ! Declare variables:
          REAL(sdk), INTENT(IN)    :: A(G,G),b(G)
          INTEGER(sik)             :: P(G),Q(G)
          REAL(sdk)                :: LU(G,G)
          REAL(sdk), INTENT(OUT)  :: x(G)
          
          ! Call other subroutines
          CALL LUCPivot(A,LU,P,Q)
          CALL DeflateLUCP(LU,P,Q,b,x)

       END SUBROUTINE LUDeflate
          
       SUBROUTINE LUCPivot(A,LU,P,Q)
          ! LU decomposition by Gaussian elimination with complete pivoting
          
          USE IntrType, ONLY: sdk, sik
          
          IMPLICIT NONE
         
         ! Declare variables:
         
          REAL(sdk), INTENT(IN)    :: A(G,G)
          REAL(sdk), INTENT(OUT)   :: LU(G,G)
          INTEGER(sik),INTENT(OUT) :: P(G),Q(G)
          INTEGER(sik)             :: i, j, k, PivotLocRow, PivotLocCol,Pk,Qk 
          REAL(sdk)                :: PivotSize,rt
          ! Initializations
          ! P Vector maintains the order of the row of A
          ! Q Vector maintains the order of the column of A
          LU=A
          DO i = 1,G
             P(i) = i
             Q(i) = i
          END DO
         
          DO k = 1,(G-1)
          
             ! STEP 1: COMPLETE PIVOTING
          
             ! Identify the maximum absolute entry on, below or rightside of
             ! the diagonal in the kth column of A
             ! PVector = Row Permutation Vector
             ! QVector = Column Permutation Vector
             ! PVector and QVector will be used to form Permutation Matrices P and Q
          
             PivotSize = ABS(LU(P(k),Q(k)))
             PivotLocRow = k
             PivotLocCol = k
             
             DO i = (k+1),G
                DO j = (k+1),G
                   rt = ABS(LU(P(i),Q(j)))
                   IF (PivotSize < rt ) THEN
                      PivotLocRow = i
                      PivotLocCol = j
                      PivotSize = rt
                   END IF
                END DO
             END DO
             
             ! Switch the entries of the pivot vectors
             
             Pk                   = P(PivotLocRow);
             P(PivotLocRow)       = P(k) ;
             P(k)                 = Pk;  
             
             Qk                   = Q(PivotLocCol);
             Q(PivotLocCol)       = Q(k);
             Q(k)                 = Qk;  
             
             ! STEP 2: MULTIPLIERS OF LU
             
             ! Calculate the multipliers and overwrite
             ! the sub-diagonal with them
             
             if (LU(Pk,Qk) == 0) THEN
                  rt = 1;
             else
                  rt = 1/LU(Pk,Qk);  
             end if
       
             DO i = (k+1),G
                LU(P(i),Qk) = LU(P(i),Qk) * rt
             END DO
             
             ! STEP 3: LINEAR OPERATIONS 
             
             ! Subtract a multiple of equation k from
             ! the subsequent equations
             
             DO i = (k + 1), G
                DO j = (k + 1),  G
                   LU(P(i),Q(j)) = LU(P(i),Q(j)) - LU(Pk,Q(j)) * LU(P(i),Qk)
                END DO
             END DO
             
          END DO
       END SUBROUTINE LUCPivot
       
       
       SUBROUTINE DeflateLUCP(LU,P,Q,b,x)
          ! determine solution of x from P'LUQ' x = b  
          ! Deflated solution will be applied for a near-singular matrix
          USE IntrType, ONLY: sdk, sik
          
          IMPLICIT NONE
         
         ! Declare variables:
         
          REAL(sdk), INTENT(IN)   :: LU(G,G),b(G)
          INTEGER(sik), INTENT(IN):: P(G),Q(G)
          REAL(sdk), INTENT(OUT)  :: x(G)
          
          INTEGER(sik)            :: i, j,ns 
          REAL(sdk)               :: pivotmin,rt
          
          ! The resulted matrix consists of a merge of a 
          ! lower triangular matrix and upper triangular 
          ! matrix together to save memory
          
          ! The next steps are to solve the linear system for x
          
          ! STEP 4: PERMUTATION 
          
          
          ! Permute b using Pvector
          
          Pb = b(P)
           
          ! STEP 5: FORWARD ELIMINATION
          
          ! Solve Ly = Pb by forward elimination
          ! Where: y=UQ'x
          ! There is no division since L has a unit diagonal
          y(1) = Pb(1)
          DO i = 2,G
             rt = Pb(i);
             DO j = 1,(i-1)
                rt = rt - LU(P(i),Q(j))*y(j);
             END DO
             y(i) =  rt;
          END DO
       
          ! The next steps to Solve Uz=y which depends on the singularity of the matrix
          
        ! STEP 6: SINGULARITY CHECK 
          
          ! Check the singularity by finding small pivot
          ! pivotmin = epsilon = smallest pivot in the U matrix
          ! Near-singularity occurs when epsilon is very small in magnitude
          
          pivotmin = ABS(LU(P(1),Q(1)))* 1E-13;
          if ( pivotmin == 0) THEN
              return;
          endif
          
          ns=0; 
          DO i = G,2,-1
             if ( abs(LU(P(i),Q(i))) < pivotmin ) then
                ns = ns +1;
                smallpivots(ns) =i;
             end if
          end do
          z=0
          Call Udeflate(1,ns,LU,P,Q);
       
          ! STEP 8: PERMUTATION
          ! Permute x using colum permutation Q
          DO i = 1,G
             x(Q(i)) = z(i);
          END DO   
    
       CONTAINS
          RECURSIVE SUBROUTINE Udeflate(start,nsmall,LU,P,Q)
             USE IntrType, ONLY: sdk, sik
             
             IMPLICIT NONE
             
         !    Declare variables:
             
             REAL(sdk), INTENT(IN)   :: LU(G,G)
             INTEGER(sik), INTENT(IN):: P(G),Q(G)
             INTEGER(sik), INTENT(IN)   :: start,nsmall
             INTEGER(sik) :: i,j,k,Qk 
             REAL(sdk)    :: rt,st,ss,sr
             
             IF (nsmall == 0)THEN
                ! Normal Non-singular Cases:
                
                ! STEP 7: BACKWARD ELIMINATION
                
                ! Solve Uz=y by backward elimination
                
                z(G) = y(G) / LU(P(G),Q(G))
                DO i = (G-1),Start,-1
                   rt = y(i);
                   DO j = (i+1),G
                      rt = rt - LU(P(i),Q(j))*z(j);
                   END DO
                   z(i) = rt / LU(P(i),Q(i));
                END DO
                return;
             END IF
             IF (nsmall == G - start +1)THEN
                return;
             END IF
             k=smallpivots(nsmall);
             Call Udeflate(k+1,nsmall-1,LU,P,Q);
             IF (k == start)THEN
                return;
             END IF
             
             ! STEP 7B: DEFLATED SOLUTIONS
             ! Vec = y1 -V *z2
            
             DO i = start,k-1
                rt = y(i);
                DO j=k+1,G
                    rt = rt - LU(P(i),Q(j))*z(j);
                END DO
                Vec(i) =rt;
             END DO    
            
             ! Backward Elimination to obtain r and s
             Qk=Q(k);
             rt = Vec(k-1) / LU(P(k-1),Q(k-1));
             st = LU(P(k-1),Qk) / LU(P(k-1),Q(k-1));
             sr = st*rt;
             ss = st*st;
             r(k-1) = rt;
             s(k-1) = st;      
       
             DO i = k-2,start,-1
                rt = Vec(i);
                st = LU(P(i),Qk);
                DO j = i+1,k-1
                   rt = rt - LU(P(i),Q(j))*r(j);
                   st = st - LU(P(i),Q(j))*s(j);
                END DO
                rt = rt / LU(P(i),Q(i));
                st = st / LU(P(i),Q(i));
                sr = sr + st*rt;
                ss = ss + st*st;
                r(i) = rt;
                s(i) = st;
             END DO
       
             ! Determine the solution at k
             z(k) = sr/(ss+1);
       
             ! Determine the solution from 1 to k-1
             z(start:k-1) = r(start:k-1) - z(k)*s(start:k-1);   
          END SUBROUTINE Udeflate
                   
       END SUBROUTINE DeflateLUCP
END MODULE LUDeflateM  