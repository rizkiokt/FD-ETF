
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.32' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov  9 2021 21:59:44' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 10])  = 'PWR W17x17' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:  7])  = 'Serp3x3' ;
WORKING_DIRECTORY         (idx, [1: 59])  = '/home/current/a/rizkiokt/Runs/run_11-28-21_Serpent_3x3_pins' ;
HOSTNAME                  (idx, [1: 24])  = 'current01.ecn.purdue.edu' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Xeon(R) Gold 6152 CPU @ 2.10GHz' ;
CPU_MHZ                   (idx, 1)        = 33581830.0 ;
START_DATE                (idx, [1: 24])  = 'Sun Nov 28 22:04:16 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sun Nov 28 22:52:42 2021' ;

% Run parameters:

POP                       (idx, 1)        = 500000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 100 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1625068908699 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 44 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  44]) = [  1.01418E+00  9.99259E-01  9.98143E-01  1.00266E+00  1.00225E+00  1.00297E+00  1.00030E+00  9.99594E-01  1.00334E+00  9.95421E-01  9.98258E-01  9.89575E-01  9.95444E-01  1.00328E+00  1.00452E+00  9.98562E-01  9.98442E-01  1.00132E+00  1.00292E+00  9.99399E-01  1.00010E+00  9.99775E-01  1.00213E+00  1.00301E+00  9.97437E-01  1.00272E+00  1.00179E+00  9.98333E-01  9.97895E-01  9.97378E-01  9.99808E-01  1.00024E+00  9.99725E-01  1.00134E+00  1.00252E+00  9.99371E-01  9.96081E-01  9.93536E-01  9.99567E-01  9.99376E-01  9.95197E-01  9.98444E-01  1.00198E+00  1.00245E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 57])  = '/home/current/a/rizkiokt/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.2E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.50237E-02 0.00011  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.84976E-01 1.7E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.65133E-01 7.6E-06  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.65672E-01 7.6E-06  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.10555E+00 3.3E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.02954E+00 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.48618E+01 3.4E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 250000344 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.56569E+03 ;
RUNNING_TIME              (idx, 1)        =  4.84210E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.19850E-01  1.19850E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.51666E-03  2.51666E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.82986E+01  4.82986E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.84077E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 32.33488 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.28552E+01 0.00072 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.26980E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 191860.65 ;
ALLOC_MEMSIZE             (idx, 1)        = 4174.28;
MEMSIZE                   (idx, 1)        = 3879.31;
XS_MEMSIZE                (idx, 1)        = 401.30;
MAT_MEMSIZE               (idx, 1)        = 28.70;
RES_MEMSIZE               (idx, 1)        = 110.40;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 3338.90;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 294.97;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 11 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 169724 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 11 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 24 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 24 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 548 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:  9])  = [ 0 0 0 0 0 0 0 0 0 ];
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  1.99710E-06 5.2E-05  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  4.80936E-01 0.00015 ];
U235_FISS                 (idx, [1:   4]) = [  4.50733E-01 7.3E-05  9.39504E-01 2.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  2.90235E-02 0.00038  6.04961E-02 0.00036 ];
U235_CAPT                 (idx, [1:   4]) = [  1.00242E-01 0.00019  1.92647E-01 0.00018 ];
U238_CAPT                 (idx, [1:   4]) = [  2.65000E-01 0.00012  5.09284E-01 8.8E-05 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 250000344 2.50000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 3.86939E+05 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 130067826 1.30274E+08 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 119932518 1.20113E+08 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -2.65241E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.55663E-11 2.7E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  4.05378E-16 2.7E-05 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.17994E+00 2.6E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.79653E-01 2.7E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.20347E-01 2.5E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98551E-01 5.2E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.50908E+01 4.2E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.95057E+01 3.3E-05 ];
INI_FMASS                 (idx, 1)        =  3.83996E-02 ;
TOT_FMASS                 (idx, 1)        =  3.83996E-02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.83062E+00 4.8E-05 ];
SIX_FF_F                  (idx, [1:   2]) = [  7.95599E-01 4.1E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  6.36203E-01 4.7E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.27555E+00 4.8E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45998E+00 1.8E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02558E+02 1.8E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.18189E+00 6.5E-05  1.17383E+00 6.4E-05  8.08075E-03 0.00102 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.18165E+00 6.5E-05 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.73796E+01 2.6E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.73800E+01 1.2E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  5.66479E-07 0.00044 ];
IMP_EALF                  (idx, [1:   2]) = [  5.66232E-07 0.00020 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  2.07321E-01 0.00038 ];
IMP_AFGE                  (idx, [1:   2]) = [  2.07222E-01 0.00017 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.02678E-03 0.00075  1.72744E-04 0.00446  9.55084E-04 0.00185  9.43582E-04 0.00181  2.76593E-03 0.00113  8.92720E-04 0.00195  2.96720E-04 0.00344 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.06595E-01 0.00179  1.24908E-02 2.9E-07  3.16569E-02 2.8E-05  1.10164E-01 3.7E-05  3.20558E-01 2.9E-05  1.34575E+00 2.3E-05  8.88662E+00 0.00019 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.89329E-03 0.00113  1.98220E-04 0.00636  1.09514E-03 0.00258  1.07955E-03 0.00272  3.15951E-03 0.00170  1.02165E-03 0.00288  3.39219E-04 0.00501 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.06165E-01 0.00260  1.24908E-02 4.4E-07  3.16577E-02 4.2E-05  1.10168E-01 5.6E-05  3.20577E-01 4.5E-05  1.34579E+00 3.1E-05  8.88376E+00 0.00030 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.99160E-05 0.00014  1.99052E-05 0.00014  2.14793E-05 0.00147 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.35384E-05 0.00013  2.35257E-05 0.00013  2.53861E-05 0.00146 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.83782E-03 0.00103  1.94925E-04 0.00651  1.08713E-03 0.00266  1.07343E-03 0.00270  3.13198E-03 0.00160  1.01336E-03 0.00289  3.37001E-04 0.00487 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.06794E-01 0.00257  1.24908E-02 4.5E-07  3.16568E-02 4.3E-05  1.10165E-01 5.6E-05  3.20578E-01 4.6E-05  1.34577E+00 3.2E-05  8.88463E+00 0.00029 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.99156E-05 0.00031  1.99043E-05 0.00031  2.15657E-05 0.00342 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.35379E-05 0.00030  2.35246E-05 0.00030  2.54883E-05 0.00341 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.85160E-03 0.00342  2.00895E-04 0.02024  1.10231E-03 0.00832  1.05814E-03 0.00825  3.15176E-03 0.00485  1.00073E-03 0.00884  3.37771E-04 0.01529 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.04077E-01 0.00798  1.24908E-02 1.4E-06  3.16619E-02 0.00012  1.10164E-01 0.00017  3.20565E-01 0.00013  1.34559E+00 9.9E-05  8.87858E+00 0.00082 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.85211E-03 0.00326  2.00562E-04 0.01954  1.09844E-03 0.00797  1.06133E-03 0.00807  3.15310E-03 0.00461  1.00123E-03 0.00866  3.37440E-04 0.01461 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.04272E-01 0.00773  1.24908E-02 1.4E-06  3.16633E-02 0.00012  1.10168E-01 0.00016  3.20569E-01 0.00013  1.34562E+00 9.5E-05  8.88083E+00 0.00081 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -3.44236E+02 0.00342 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.99363E-05 8.8E-05 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.35624E-05 5.6E-05 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.85305E-03 0.00063 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -3.43749E+02 0.00064 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  4.20984E-07 6.8E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.98483E-06 6.0E-05  2.98485E-06 6.0E-05  2.98290E-06 0.00072 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  2.64056E-05 7.8E-05  2.64054E-05 7.9E-05  2.64328E-05 0.00091 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  6.36752E-01 4.7E-05  6.35896E-01 4.7E-05  7.78250E-01 0.00120 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.02639E+01 0.00187 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.95043E+01 3.5E-05  3.22182E+01 4.7E-05 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  3])  = '001' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+01  6.25000E-07  1.00000E-11 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  3.99345E+05 0.00085  1.61099E+06 0.00044  3.35339E+06 0.00037  3.65803E+06 0.00026  3.40564E+06 0.00026  3.71566E+06 0.00025  2.52593E+06 0.00029  2.24749E+06 0.00034  1.71564E+06 0.00024  1.39787E+06 0.00048  1.20382E+06 0.00030  1.08456E+06 0.00031  9.99658E+05 0.00035  9.49283E+05 0.00037  9.24268E+05 0.00036  7.97374E+05 0.00037  7.87138E+05 0.00034  7.79310E+05 0.00049  7.63900E+05 0.00037  1.48797E+06 0.00024  1.42664E+06 0.00030  1.02534E+06 0.00035  6.60557E+05 0.00037  7.55082E+05 0.00041  7.07973E+05 0.00041  6.48352E+05 0.00046  1.04716E+06 0.00033  2.42055E+05 0.00065  3.03581E+05 0.00059  2.76493E+05 0.00075  1.60028E+05 0.00093  2.78661E+05 0.00059  1.89104E+05 0.00079  1.59981E+05 0.00081  3.03122E+04 0.00128  3.01200E+04 0.00139  3.08631E+04 0.00136  3.19114E+04 0.00185  3.17104E+04 0.00147  3.11829E+04 0.00157  3.23145E+04 0.00102  3.03312E+04 0.00173  5.71259E+04 0.00130  9.12398E+04 0.00086  1.16189E+05 0.00099  3.05559E+05 0.00071  3.19326E+05 0.00064  3.39431E+05 0.00056  2.20534E+05 0.00070  1.58166E+05 0.00067  1.19073E+05 0.00084  1.36459E+05 0.00070  2.47808E+05 0.00069  3.18725E+05 0.00037  5.79515E+05 0.00035  8.35426E+05 0.00025  1.16927E+06 0.00032  7.15124E+05 0.00033  4.97917E+05 0.00030  3.50712E+05 0.00042  3.10122E+05 0.00034  3.00473E+05 0.00041  2.47179E+05 0.00044  1.64747E+05 0.00052  1.50303E+05 0.00061  1.31810E+05 0.00076  1.09732E+05 0.00070  8.50386E+04 0.00080  5.56533E+04 0.00077  1.91377E+04 0.00137 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.21447E+00 0.00017 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  4.24455E+00 6.8E-05  7.57069E-01 0.00013 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  5.22172E-01 3.6E-05  1.26334E+00 6.9E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.63406E-03 0.00019  3.76183E-02 8.5E-05 ];
INF_ABS                   (idx, [1:   4]) = [  1.05752E-02 0.00017  9.92853E-02 0.00014 ];
INF_FISS                  (idx, [1:   4]) = [  2.94109E-03 0.00018  6.16670E-02 0.00018 ];
INF_NSF                   (idx, [1:   4]) = [  7.49589E-03 0.00017  1.50264E-01 0.00018 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.54867E+00 2.2E-05  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03653E+02 2.1E-06  2.02270E+02 2.7E-09 ];
INF_INVV                  (idx, [1:   4]) = [  5.74712E-08 0.00014  2.37243E-06 6.2E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  5.11597E-01 3.8E-05  1.16404E+00 8.2E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.23197E-01 5.3E-05  3.04409E-01 0.00014 ];
INF_SCATT2                (idx, [1:   4]) = [  8.82377E-02 0.00011  7.58987E-02 0.00055 ];
INF_SCATT3                (idx, [1:   4]) = [  7.50178E-03 0.00130  2.30190E-02 0.00153 ];
INF_SCATT4                (idx, [1:   4]) = [ -8.66386E-03 0.00092 -5.37006E-03 0.00569 ];
INF_SCATT5                (idx, [1:   4]) = [  4.96201E-04 0.01463  4.37342E-03 0.00544 ];
INF_SCATT6                (idx, [1:   4]) = [  4.74255E-03 0.00168 -1.15721E-02 0.00218 ];
INF_SCATT7                (idx, [1:   4]) = [  7.28098E-04 0.01039 -2.16456E-04 0.11281 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  5.11642E-01 3.8E-05  1.16404E+00 8.2E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.23197E-01 5.3E-05  3.04409E-01 0.00014 ];
INF_SCATTP2               (idx, [1:   4]) = [  8.82380E-02 0.00011  7.58987E-02 0.00055 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.50194E-03 0.00130  2.30190E-02 0.00153 ];
INF_SCATTP4               (idx, [1:   4]) = [ -8.66380E-03 0.00092 -5.37006E-03 0.00569 ];
INF_SCATTP5               (idx, [1:   4]) = [  4.96153E-04 0.01461  4.37342E-03 0.00544 ];
INF_SCATTP6               (idx, [1:   4]) = [  4.74257E-03 0.00168 -1.15721E-02 0.00218 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.28028E-04 0.01037 -2.16456E-04 0.11281 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.21829E-01 0.00011  8.48378E-01 7.5E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.50266E+00 0.00011  3.92907E-01 7.5E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.05298E-02 0.00017  9.92853E-02 0.00014 ];
INF_REMXS                 (idx, [1:   4]) = [  2.63643E-02 0.00015  1.01002E-01 0.00021 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
PM149_LAMBDA              (idx, 1)        =  0.00000E+00 ;
I135_LAMBDA               (idx, 1)        =  0.00000E+00 ;
XE135_LAMBDA              (idx, 1)        =  0.00000E+00 ;
XE135M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
I135_BR                   (idx, 1)        =  0.00000E+00 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  4.95807E-01 3.8E-05  1.57893E-02 0.00019  1.70470E-03 0.00175  1.16233E+00 8.3E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.18634E-01 5.3E-05  4.56310E-03 0.00041  6.22173E-04 0.00458  3.03787E-01 0.00014 ];
INF_S2                    (idx, [1:   8]) = [  8.96056E-02 0.00010 -1.36789E-03 0.00106  3.43268E-04 0.00537  7.55555E-02 0.00055 ];
INF_S3                    (idx, [1:   8]) = [  9.11800E-03 0.00109 -1.61622E-03 0.00058  1.24573E-04 0.01093  2.28944E-02 0.00154 ];
INF_S4                    (idx, [1:   8]) = [ -8.12937E-03 0.00095 -5.34489E-04 0.00207 -4.94416E-07 1.00000 -5.36957E-03 0.00572 ];
INF_S5                    (idx, [1:   8]) = [  4.79865E-04 0.01419  1.63354E-05 0.05848 -5.27937E-05 0.01628  4.42622E-03 0.00539 ];
INF_S6                    (idx, [1:   8]) = [  4.86763E-03 0.00159 -1.25081E-04 0.00708 -6.56618E-05 0.01513 -1.15065E-02 0.00220 ];
INF_S7                    (idx, [1:   8]) = [  8.76899E-04 0.00838 -1.48801E-04 0.00701 -6.06742E-05 0.01360 -1.55782E-04 0.15632 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  4.95853E-01 3.8E-05  1.57893E-02 0.00019  1.70470E-03 0.00175  1.16233E+00 8.3E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.18634E-01 5.3E-05  4.56310E-03 0.00041  6.22173E-04 0.00458  3.03787E-01 0.00014 ];
INF_SP2                   (idx, [1:   8]) = [  8.96059E-02 0.00010 -1.36789E-03 0.00106  3.43268E-04 0.00537  7.55555E-02 0.00055 ];
INF_SP3                   (idx, [1:   8]) = [  9.11817E-03 0.00109 -1.61622E-03 0.00058  1.24573E-04 0.01093  2.28944E-02 0.00154 ];
INF_SP4                   (idx, [1:   8]) = [ -8.12931E-03 0.00096 -5.34489E-04 0.00207 -4.94416E-07 1.00000 -5.36957E-03 0.00572 ];
INF_SP5                   (idx, [1:   8]) = [  4.79817E-04 0.01417  1.63354E-05 0.05848 -5.27937E-05 0.01628  4.42622E-03 0.00539 ];
INF_SP6                   (idx, [1:   8]) = [  4.86765E-03 0.00159 -1.25081E-04 0.00708 -6.56618E-05 0.01513 -1.15065E-02 0.00220 ];
INF_SP7                   (idx, [1:   8]) = [  8.76830E-04 0.00837 -1.48801E-04 0.00701 -6.06742E-05 0.01360 -1.55782E-04 0.15632 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  2.35821E-01 0.00023  7.70998E-01 0.00093 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.35920E-01 0.00030  7.69994E-01 0.00122 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.35873E-01 0.00038  7.69407E-01 0.00164 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.35671E-01 0.00034  7.73665E-01 0.00124 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.41350E+00 0.00023  4.32349E-01 0.00094 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.41291E+00 0.00030  4.32919E-01 0.00122 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.41319E+00 0.00037  4.33262E-01 0.00164 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.41440E+00 0.00034  4.30866E-01 0.00125 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.88502E-03 0.00226  1.95309E-04 0.01332  1.08992E-03 0.00586  1.07067E-03 0.00560  3.17373E-03 0.00343  1.01618E-03 0.00564  3.39221E-04 0.01068 ];
LAMBDA                    (idx, [1:  14]) = [  8.06683E-01 0.00559  1.24908E-02 9.7E-07  3.16561E-02 8.8E-05  1.10147E-01 0.00012  3.20546E-01 9.3E-05  1.34581E+00 6.5E-05  8.88472E+00 0.00063 ];

% Assembly discontinuity factors (order: W-S-E-N / NW-NE-SE-SW):

DF_SURFACE                (idx, [1:  3])  = '001' ;
DF_SURFACE_TYPE           (idx, 1)        = 15 ;
DF_SYM                    (idx, 1)        = 0 ;
DF_N_SURF                 (idx, 1)        = 6 ;
DF_N_CORN                 (idx, 1)        = 4 ;
DF_VOLUME                 (idx, 1)        =  1.59264E+01 ;
DF_SURF_AREA              (idx, [1:  6])  = [ 1.26200E+01  1.26200E+01  1.26200E+01  1.26200E+01  1.59264E+00  1.59264E+00 ];
DF_MID_AREA               (idx, [1:  6])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_CORN_AREA              (idx, [1:  4])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_SURF_IN_CURR           (idx, [1:  24]) = [  8.39395E-01 8.4E-05  1.54066E-01 0.00019  8.37948E-01 8.7E-05  1.58603E-01 0.00016  8.37944E-01 5.8E-05  1.58627E-01 0.00017  8.39404E-01 8.8E-05  1.54048E-01 0.00018  1.06229E-01 0.00020  1.88022E-02 0.00052  1.06203E-01 0.00020  1.88027E-02 0.00063 ];
DF_SURF_OUT_CURR          (idx, [1:  24]) = [  8.39395E-01 8.4E-05  1.54066E-01 0.00019  8.44336E-01 8.2E-05  1.53851E-01 0.00019  8.44322E-01 7.5E-05  1.53931E-01 0.00020  8.39404E-01 8.8E-05  1.54048E-01 0.00018  1.06229E-01 0.00020  1.88022E-02 0.00052  1.06203E-01 0.00020  1.88027E-02 0.00063 ];
DF_SURF_NET_CURR          (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -6.38834E-03 0.00863  4.75176E-03 0.00523 -6.37833E-03 0.00720  4.69539E-03 0.00491  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -2.39484E-08 1.00000  1.56403E-11 1.00000 -7.59793E-08 0.78908 -3.60021E-08 0.73181 ];
DF_MID_IN_CURR            (idx, [1:  24]) = [  8.45707E-02 0.00019  1.49040E-02 0.00062  8.45583E-02 0.00021  1.51897E-02 0.00044  8.45480E-02 0.00020  1.51788E-02 0.00052  8.45600E-02 0.00023  1.49024E-02 0.00048  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_OUT_CURR           (idx, [1:  24]) = [  8.45707E-02 0.00019  1.49040E-02 0.00062  8.50455E-02 0.00025  1.48458E-02 0.00053  8.50406E-02 0.00019  1.48534E-02 0.00061  8.45600E-02 0.00023  1.49024E-02 0.00048  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_NET_CURR           (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -4.87219E-04 0.04901  3.43952E-04 0.02878 -4.92573E-04 0.04507  3.25381E-04 0.03248  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_CORN_IN_CURR           (idx, [1:  16]) = [  8.34605E-02 0.00021  1.58364E-02 0.00069  8.34333E-02 0.00025  1.60081E-02 0.00063  8.23397E-02 0.00020  1.72126E-02 0.00047  8.34120E-02 0.00021  1.60191E-02 0.00052 ];
DF_CORN_OUT_CURR          (idx, [1:  16]) = [  8.34605E-02 0.00021  1.58364E-02 0.00069  8.35675E-02 0.00027  1.58842E-02 0.00067  8.39214E-02 0.00017  1.60653E-02 0.00049  8.35483E-02 0.00026  1.58738E-02 0.00053 ];
DF_CORN_NET_CURR          (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -1.34151E-04 0.14269  1.23908E-04 0.06012 -1.58179E-03 0.01161  1.14729E-03 0.00664 -1.36253E-04 0.12085  1.45386E-04 0.04155 ];
DF_HET_VOL_FLUX           (idx, [1:   4]) = [  2.66515E-01 6.6E-05  4.75313E-02 0.00012 ];
DF_HET_SURF_FLUX          (idx, [1:  24]) = [  2.66052E-01 8.4E-05  4.88324E-02 0.00019  2.66606E-01 7.8E-05  4.95174E-02 0.00016  2.66603E-01 6.2E-05  4.95338E-02 0.00017  2.66055E-01 8.8E-05  4.88267E-02 0.00018  2.66799E-01 0.00020  4.72227E-02 0.00052  2.66733E-01 0.00020  4.72238E-02 0.00063 ];
DF_HET_CORN_FLUX          (idx, [1:  16]) = [  2.64108E-01 0.00040  5.05708E-02 0.00089  2.63879E-01 0.00032  5.09440E-02 0.00087  2.62520E-01 0.00024  5.31643E-02 0.00060  2.63821E-01 0.00028  5.09463E-02 0.00073 ];
DF_HOM_VOL_FLUX           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HOM_SURF_FLUX          (idx, [1:  24]) = [  2.66515E-01 6.6E-05  4.75313E-02 0.00012  2.66515E-01 6.6E-05  4.75313E-02 0.00012  2.66515E-01 6.6E-05  4.75313E-02 0.00012  2.66515E-01 6.6E-05  4.75313E-02 0.00012  2.66515E-01 6.6E-05  4.75313E-02 0.00012  2.66515E-01 6.6E-05  4.75313E-02 0.00012 ];
DF_HOM_CORN_FLUX          (idx, [1:  16]) = [  2.66515E-01 6.6E-05  4.75313E-02 0.00012  2.66515E-01 6.6E-05  4.75313E-02 0.00012  2.66515E-01 6.6E-05  4.75313E-02 0.00012  2.66515E-01 6.6E-05  4.75313E-02 0.00012 ];
DF_SURF_DF                (idx, [1:  24]) = [  9.98264E-01 5.4E-05  1.02737E+00 0.00015  1.00034E+00 3.8E-05  1.04178E+00 8.9E-05  1.00033E+00 4.5E-05  1.04213E+00 0.00012  9.98275E-01 6.0E-05  1.02725E+00 0.00013  1.00107E+00 0.00020  9.93506E-01 0.00050  1.00082E+00 0.00020  9.93531E-01 0.00063 ];
DF_CORN_DF                (idx, [1:  16]) = [  9.90968E-01 0.00039  1.06395E+00 0.00090  9.90110E-01 0.00029  1.07180E+00 0.00088  9.85012E-01 0.00023  1.11851E+00 0.00059  9.89891E-01 0.00027  1.07185E+00 0.00073 ];
DF_SGN_SURF_IN_CURR       (idx, [1:  24]) = [  7.37119E-04 0.10091 -3.58635E-04 0.06183 -3.00185E-03 0.01647  2.62789E-03 0.00972  3.02105E-03 0.01831 -2.64243E-03 0.00848 -7.07540E-04 0.07769  3.45954E-04 0.07131  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_OUT_CURR      (idx, [1:  24]) = [  7.37119E-04 0.10091 -3.58635E-04 0.06183  1.22701E-04 0.42232  8.10981E-04 0.03053  4.10955E-05 1.00000 -7.45005E-04 0.03290 -7.07540E-04 0.07769  3.45954E-04 0.07131  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_NET_CURR      (idx, [1:  24]) = [ -3.85958E-21 0.53504  0.00000E+00 0.0E+00 -3.12455E-03 0.02317  1.81691E-03 0.01625  2.97995E-03 0.02328 -1.89742E-03 0.01564  9.07675E-22 1.00000  2.27053E-22 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HET_SURF_FLUX      (idx, [1:  24]) = [  8.06087E-05 0.37290 -8.43003E-05 0.14917 -3.39496E-04 0.05682  5.26050E-04 0.01971  3.74235E-04 0.04663 -5.17093E-04 0.01613 -6.74261E-05 0.40973  8.08824E-05 0.15525  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HOM_SURF_FLUX      (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_DF            (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.32' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov  9 2021 21:59:44' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 10])  = 'PWR W17x17' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:  7])  = 'Serp3x3' ;
WORKING_DIRECTORY         (idx, [1: 59])  = '/home/current/a/rizkiokt/Runs/run_11-28-21_Serpent_3x3_pins' ;
HOSTNAME                  (idx, [1: 24])  = 'current01.ecn.purdue.edu' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Xeon(R) Gold 6152 CPU @ 2.10GHz' ;
CPU_MHZ                   (idx, 1)        = 33581830.0 ;
START_DATE                (idx, [1: 24])  = 'Sun Nov 28 22:04:16 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sun Nov 28 22:52:42 2021' ;

% Run parameters:

POP                       (idx, 1)        = 500000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 100 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1625068908699 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 44 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  44]) = [  1.01418E+00  9.99259E-01  9.98143E-01  1.00266E+00  1.00225E+00  1.00297E+00  1.00030E+00  9.99594E-01  1.00334E+00  9.95421E-01  9.98258E-01  9.89575E-01  9.95444E-01  1.00328E+00  1.00452E+00  9.98562E-01  9.98442E-01  1.00132E+00  1.00292E+00  9.99399E-01  1.00010E+00  9.99775E-01  1.00213E+00  1.00301E+00  9.97437E-01  1.00272E+00  1.00179E+00  9.98333E-01  9.97895E-01  9.97378E-01  9.99808E-01  1.00024E+00  9.99725E-01  1.00134E+00  1.00252E+00  9.99371E-01  9.96081E-01  9.93536E-01  9.99567E-01  9.99376E-01  9.95197E-01  9.98444E-01  1.00198E+00  1.00245E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 57])  = '/home/current/a/rizkiokt/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.2E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.50237E-02 0.00011  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.84976E-01 1.7E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.65133E-01 7.6E-06  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.65672E-01 7.6E-06  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.10555E+00 3.3E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.02954E+00 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.48618E+01 3.4E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 250000344 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.56569E+03 ;
RUNNING_TIME              (idx, 1)        =  4.84210E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.19850E-01  1.19850E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.51666E-03  2.51666E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.82986E+01  4.82986E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.84077E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 32.33489 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.28552E+01 0.00072 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.26980E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 191860.65 ;
ALLOC_MEMSIZE             (idx, 1)        = 4174.28;
MEMSIZE                   (idx, 1)        = 3879.31;
XS_MEMSIZE                (idx, 1)        = 401.30;
MAT_MEMSIZE               (idx, 1)        = 28.70;
RES_MEMSIZE               (idx, 1)        = 110.40;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 3338.90;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 294.97;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 11 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 169724 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 11 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 24 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 24 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 548 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:  9])  = [ 0 0 0 0 0 0 0 0 0 ];
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  1.99710E-06 5.2E-05  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  4.80936E-01 0.00015 ];
U235_FISS                 (idx, [1:   4]) = [  4.50733E-01 7.3E-05  9.39504E-01 2.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  2.90235E-02 0.00038  6.04961E-02 0.00036 ];
U235_CAPT                 (idx, [1:   4]) = [  1.00242E-01 0.00019  1.92647E-01 0.00018 ];
U238_CAPT                 (idx, [1:   4]) = [  2.65000E-01 0.00012  5.09284E-01 8.8E-05 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 250000344 2.50000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 3.86939E+05 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 130067826 1.30274E+08 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 119932518 1.20113E+08 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -2.65241E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.55663E-11 2.7E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  4.05378E-16 2.7E-05 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.17994E+00 2.6E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.79653E-01 2.7E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.20347E-01 2.5E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98551E-01 5.2E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.50908E+01 4.2E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.95057E+01 3.3E-05 ];
INI_FMASS                 (idx, 1)        =  3.83996E-02 ;
TOT_FMASS                 (idx, 1)        =  3.83996E-02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.83062E+00 4.8E-05 ];
SIX_FF_F                  (idx, [1:   2]) = [  7.95599E-01 4.1E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  6.36203E-01 4.7E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.27555E+00 4.8E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45998E+00 1.8E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02558E+02 1.8E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.18189E+00 6.5E-05  1.17383E+00 6.4E-05  8.08075E-03 0.00102 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.18165E+00 6.5E-05 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.73796E+01 2.6E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.73800E+01 1.2E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  5.66479E-07 0.00044 ];
IMP_EALF                  (idx, [1:   2]) = [  5.66232E-07 0.00020 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  2.07321E-01 0.00038 ];
IMP_AFGE                  (idx, [1:   2]) = [  2.07222E-01 0.00017 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.02678E-03 0.00075  1.72744E-04 0.00446  9.55084E-04 0.00185  9.43582E-04 0.00181  2.76593E-03 0.00113  8.92720E-04 0.00195  2.96720E-04 0.00344 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.06595E-01 0.00179  1.24908E-02 2.9E-07  3.16569E-02 2.8E-05  1.10164E-01 3.7E-05  3.20558E-01 2.9E-05  1.34575E+00 2.3E-05  8.88662E+00 0.00019 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.89329E-03 0.00113  1.98220E-04 0.00636  1.09514E-03 0.00258  1.07955E-03 0.00272  3.15951E-03 0.00170  1.02165E-03 0.00288  3.39219E-04 0.00501 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.06165E-01 0.00260  1.24908E-02 4.4E-07  3.16577E-02 4.2E-05  1.10168E-01 5.6E-05  3.20577E-01 4.5E-05  1.34579E+00 3.1E-05  8.88376E+00 0.00030 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.99160E-05 0.00014  1.99052E-05 0.00014  2.14793E-05 0.00147 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.35384E-05 0.00013  2.35257E-05 0.00013  2.53861E-05 0.00146 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.83782E-03 0.00103  1.94925E-04 0.00651  1.08713E-03 0.00266  1.07343E-03 0.00270  3.13198E-03 0.00160  1.01336E-03 0.00289  3.37001E-04 0.00487 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.06794E-01 0.00257  1.24908E-02 4.5E-07  3.16568E-02 4.3E-05  1.10165E-01 5.6E-05  3.20578E-01 4.6E-05  1.34577E+00 3.2E-05  8.88463E+00 0.00029 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.99156E-05 0.00031  1.99043E-05 0.00031  2.15657E-05 0.00342 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.35379E-05 0.00030  2.35246E-05 0.00030  2.54883E-05 0.00341 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.85160E-03 0.00342  2.00895E-04 0.02024  1.10231E-03 0.00832  1.05814E-03 0.00825  3.15176E-03 0.00485  1.00073E-03 0.00884  3.37771E-04 0.01529 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.04077E-01 0.00798  1.24908E-02 1.4E-06  3.16619E-02 0.00012  1.10164E-01 0.00017  3.20565E-01 0.00013  1.34559E+00 9.9E-05  8.87858E+00 0.00082 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.85211E-03 0.00326  2.00562E-04 0.01954  1.09844E-03 0.00797  1.06133E-03 0.00807  3.15310E-03 0.00461  1.00123E-03 0.00866  3.37440E-04 0.01461 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.04272E-01 0.00773  1.24908E-02 1.4E-06  3.16633E-02 0.00012  1.10168E-01 0.00016  3.20569E-01 0.00013  1.34562E+00 9.5E-05  8.88083E+00 0.00081 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -3.44236E+02 0.00342 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.99363E-05 8.8E-05 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.35624E-05 5.6E-05 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.85305E-03 0.00063 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -3.43749E+02 0.00064 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  4.20984E-07 6.8E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.98483E-06 6.0E-05  2.98485E-06 6.0E-05  2.98290E-06 0.00072 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  2.64056E-05 7.8E-05  2.64054E-05 7.9E-05  2.64328E-05 0.00091 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  6.36752E-01 4.7E-05  6.35896E-01 4.7E-05  7.78250E-01 0.00120 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.02639E+01 0.00187 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.95043E+01 3.5E-05  3.22182E+01 4.7E-05 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  3])  = '002' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+01  6.25000E-07  1.00000E-11 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  3.97519E+05 0.00088  1.60680E+06 0.00063  3.34081E+06 0.00030  3.63996E+06 0.00026  3.38558E+06 0.00019  3.68897E+06 0.00023  2.51125E+06 0.00027  2.23335E+06 0.00024  1.70779E+06 0.00021  1.39240E+06 0.00028  1.20091E+06 0.00037  1.08276E+06 0.00033  9.98308E+05 0.00037  9.48797E+05 0.00028  9.23854E+05 0.00043  7.97542E+05 0.00032  7.87640E+05 0.00037  7.79715E+05 0.00042  7.65338E+05 0.00039  1.48999E+06 0.00026  1.43198E+06 0.00024  1.02941E+06 0.00034  6.64079E+05 0.00044  7.60577E+05 0.00037  7.14660E+05 0.00038  6.52309E+05 0.00037  1.05870E+06 0.00030  2.43665E+05 0.00069  3.05435E+05 0.00043  2.77642E+05 0.00065  1.60567E+05 0.00087  2.79763E+05 0.00060  1.89843E+05 0.00077  1.60878E+05 0.00074  3.04226E+04 0.00166  3.03906E+04 0.00185  3.10490E+04 0.00152  3.21002E+04 0.00154  3.18768E+04 0.00139  3.12954E+04 0.00182  3.24369E+04 0.00132  3.04675E+04 0.00183  5.74179E+04 0.00145  9.18407E+04 0.00098  1.16855E+05 0.00082  3.07167E+05 0.00053  3.21216E+05 0.00040  3.41364E+05 0.00048  2.22155E+05 0.00062  1.59693E+05 0.00069  1.20651E+05 0.00077  1.38027E+05 0.00059  2.51250E+05 0.00057  3.24008E+05 0.00043  5.89413E+05 0.00032  8.53066E+05 0.00035  1.19915E+06 0.00026  7.35671E+05 0.00037  5.14314E+05 0.00039  3.63153E+05 0.00042  3.21467E+05 0.00040  3.12457E+05 0.00041  2.57564E+05 0.00044  1.71816E+05 0.00046  1.57116E+05 0.00061  1.38059E+05 0.00061  1.15190E+05 0.00063  8.93381E+04 0.00074  5.85198E+04 0.00092  2.00312E+04 0.00134 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.21686E+00 0.00016 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  4.23706E+00 7.2E-05  7.76342E-01 0.00012 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  5.23284E-01 4.4E-05  1.26674E+00 4.9E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.75913E-03 0.00022  3.78386E-02 6.9E-05 ];
INF_ABS                   (idx, [1:   4]) = [  1.07145E-02 0.00018  9.99732E-02 0.00011 ];
INF_FISS                  (idx, [1:   4]) = [  2.95540E-03 0.00014  6.21347E-02 0.00015 ];
INF_NSF                   (idx, [1:   4]) = [  7.53052E-03 0.00015  1.51404E-01 0.00015 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.54806E+00 1.4E-05  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03645E+02 1.5E-06  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  5.79042E-08 0.00015  2.38562E-06 5.7E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  5.12571E-01 4.5E-05  1.16677E+00 5.2E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.23616E-01 6.7E-05  3.04019E-01 0.00021 ];
INF_SCATT2                (idx, [1:   4]) = [  8.83771E-02 0.00012  7.55626E-02 0.00057 ];
INF_SCATT3                (idx, [1:   4]) = [  7.51552E-03 0.00130  2.28605E-02 0.00150 ];
INF_SCATT4                (idx, [1:   4]) = [ -8.68271E-03 0.00087 -5.44994E-03 0.00554 ];
INF_SCATT5                (idx, [1:   4]) = [  4.87647E-04 0.01519  4.42958E-03 0.00634 ];
INF_SCATT6                (idx, [1:   4]) = [  4.74237E-03 0.00153 -1.16738E-02 0.00218 ];
INF_SCATT7                (idx, [1:   4]) = [  7.27824E-04 0.00929 -2.41417E-04 0.07819 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  5.12616E-01 4.5E-05  1.16677E+00 5.2E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.23616E-01 6.7E-05  3.04019E-01 0.00021 ];
INF_SCATTP2               (idx, [1:   4]) = [  8.83773E-02 0.00012  7.55626E-02 0.00057 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.51551E-03 0.00130  2.28605E-02 0.00150 ];
INF_SCATTP4               (idx, [1:   4]) = [ -8.68264E-03 0.00087 -5.44994E-03 0.00554 ];
INF_SCATTP5               (idx, [1:   4]) = [  4.87553E-04 0.01519  4.42958E-03 0.00634 ];
INF_SCATTP6               (idx, [1:   4]) = [  4.74239E-03 0.00153 -1.16738E-02 0.00218 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.27858E-04 0.00928 -2.41417E-04 0.07819 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.22291E-01 0.00011  8.51191E-01 6.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.49954E+00 0.00011  3.91608E-01 6.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.06693E-02 0.00018  9.99732E-02 0.00011 ];
INF_REMXS                 (idx, [1:   4]) = [  2.66083E-02 0.00017  1.01642E-01 0.00016 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
PM149_LAMBDA              (idx, 1)        =  0.00000E+00 ;
I135_LAMBDA               (idx, 1)        =  0.00000E+00 ;
XE135_LAMBDA              (idx, 1)        =  0.00000E+00 ;
XE135M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
I135_BR                   (idx, 1)        =  0.00000E+00 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  4.96676E-01 4.3E-05  1.58952E-02 0.00023  1.66738E-03 0.00185  1.16510E+00 5.3E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.19025E-01 6.6E-05  4.59063E-03 0.00047  6.08071E-04 0.00335  3.03411E-01 0.00021 ];
INF_S2                    (idx, [1:   8]) = [  8.97571E-02 0.00012 -1.38004E-03 0.00122  3.37385E-04 0.00337  7.52252E-02 0.00058 ];
INF_S3                    (idx, [1:   8]) = [  9.14435E-03 0.00107 -1.62883E-03 0.00070  1.22470E-04 0.00945  2.27380E-02 0.00151 ];
INF_S4                    (idx, [1:   8]) = [ -8.14666E-03 0.00094 -5.36054E-04 0.00219  8.00603E-07 1.00000 -5.45074E-03 0.00555 ];
INF_S5                    (idx, [1:   8]) = [  4.69993E-04 0.01570  1.76533E-05 0.05577 -5.02080E-05 0.01562  4.47979E-03 0.00624 ];
INF_S6                    (idx, [1:   8]) = [  4.86750E-03 0.00140 -1.25127E-04 0.00848 -6.39911E-05 0.01343 -1.16098E-02 0.00217 ];
INF_S7                    (idx, [1:   8]) = [  8.76482E-04 0.00743 -1.48658E-04 0.00637 -5.65608E-05 0.01013 -1.84856E-04 0.10146 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  4.96721E-01 4.3E-05  1.58952E-02 0.00023  1.66738E-03 0.00185  1.16510E+00 5.3E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.19026E-01 6.7E-05  4.59063E-03 0.00047  6.08071E-04 0.00335  3.03411E-01 0.00021 ];
INF_SP2                   (idx, [1:   8]) = [  8.97574E-02 0.00012 -1.38004E-03 0.00122  3.37385E-04 0.00337  7.52252E-02 0.00058 ];
INF_SP3                   (idx, [1:   8]) = [  9.14434E-03 0.00107 -1.62883E-03 0.00070  1.22470E-04 0.00945  2.27380E-02 0.00151 ];
INF_SP4                   (idx, [1:   8]) = [ -8.14659E-03 0.00094 -5.36054E-04 0.00219  8.00603E-07 1.00000 -5.45074E-03 0.00555 ];
INF_SP5                   (idx, [1:   8]) = [  4.69900E-04 0.01569  1.76533E-05 0.05577 -5.02080E-05 0.01562  4.47979E-03 0.00624 ];
INF_SP6                   (idx, [1:   8]) = [  4.86752E-03 0.00140 -1.25127E-04 0.00848 -6.39911E-05 0.01343 -1.16098E-02 0.00217 ];
INF_SP7                   (idx, [1:   8]) = [  8.76516E-04 0.00741 -1.48658E-04 0.00637 -5.65608E-05 0.01013 -1.84856E-04 0.10146 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  1.18034E-01 0.00017  3.97934E-01 0.00068 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  1.18130E-01 0.00024  3.96918E-01 0.00093 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  1.18030E-01 0.00028  3.99105E-01 0.00119 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  1.17941E-01 0.00026  3.97803E-01 0.00101 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  2.82406E+00 0.00017  8.37669E-01 0.00068 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  2.82175E+00 0.00024  8.39821E-01 0.00094 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  2.82414E+00 0.00028  8.35229E-01 0.00118 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  2.82627E+00 0.00026  8.37956E-01 0.00101 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.90911E-03 0.00231  1.97217E-04 0.01303  1.09697E-03 0.00554  1.08136E-03 0.00526  3.16547E-03 0.00325  1.02714E-03 0.00593  3.40959E-04 0.01046 ];
LAMBDA                    (idx, [1:  14]) = [  8.07236E-01 0.00540  1.24908E-02 8.3E-07  3.16568E-02 8.7E-05  1.10181E-01 0.00012  3.20568E-01 8.9E-05  1.34570E+00 6.4E-05  8.88163E+00 0.00059 ];

% Assembly discontinuity factors (order: W-S-E-N / NW-NE-SE-SW):

DF_SURFACE                (idx, [1:  3])  = '002' ;
DF_SURFACE_TYPE           (idx, 1)        = 15 ;
DF_SYM                    (idx, 1)        = 0 ;
DF_N_SURF                 (idx, 1)        = 6 ;
DF_N_CORN                 (idx, 1)        = 4 ;
DF_VOLUME                 (idx, 1)        =  1.59264E+01 ;
DF_SURF_AREA              (idx, [1:  6])  = [ 1.26200E+01  1.26200E+01  1.26200E+01  1.26200E+01  1.59264E+00  1.59264E+00 ];
DF_MID_AREA               (idx, [1:  6])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_CORN_AREA              (idx, [1:  4])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_SURF_IN_CURR           (idx, [1:  24]) = [  8.44322E-01 7.5E-05  1.53931E-01 0.00020  8.16930E-01 8.0E-05  1.78684E-01 0.00018  8.44367E-01 5.0E-05  1.53881E-01 0.00017  8.37771E-01 8.6E-05  1.57240E-01 0.00012  1.05921E-01 0.00019  1.92962E-02 0.00046  1.05970E-01 0.00025  1.92868E-02 0.00059 ];
DF_SURF_OUT_CURR          (idx, [1:  24]) = [  8.37944E-01 5.8E-05  1.58627E-01 0.00017  8.44934E-01 8.4E-05  1.57697E-01 0.00017  8.37942E-01 6.2E-05  1.58614E-01 0.00015  8.37771E-01 8.6E-05  1.57240E-01 0.00012  1.05921E-01 0.00019  1.92961E-02 0.00046  1.05970E-01 0.00025  1.92868E-02 0.00059 ];
DF_SURF_NET_CURR          (idx, [1:  24]) = [  6.37833E-03 0.00720 -4.69539E-03 0.00491 -2.80034E-02 0.00263  2.09875E-02 0.00126  6.42493E-03 0.00792 -4.73231E-03 0.00416  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -9.18350E-08 0.69923  8.39239E-08 0.32734 -3.84733E-09 1.00000  7.94761E-09 1.00000 ];
DF_MID_IN_CURR            (idx, [1:  24]) = [  8.50406E-02 0.00019  1.48534E-02 0.00061  8.14741E-02 0.00021  1.80655E-02 0.00046  8.50335E-02 0.00021  1.48515E-02 0.00056  8.43633E-02 0.00027  1.53296E-02 0.00049  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_OUT_CURR           (idx, [1:  24]) = [  8.45480E-02 0.00020  1.51788E-02 0.00052  8.50984E-02 0.00020  1.53382E-02 0.00058  8.45156E-02 0.00025  1.51822E-02 0.00046  8.43633E-02 0.00027  1.53296E-02 0.00049  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_NET_CURR           (idx, [1:  24]) = [  4.92573E-04 0.04507 -3.25381E-04 0.03248 -3.62430E-03 0.00724  2.72728E-03 0.00447  5.17898E-04 0.05781 -3.30630E-04 0.03315  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_CORN_IN_CURR           (idx, [1:  16]) = [  8.35587E-02 0.00020  1.59140E-02 0.00054  8.35788E-02 0.00021  1.59019E-02 0.00056  8.30191E-02 0.00021  1.67494E-02 0.00058  8.30514E-02 0.00026  1.67353E-02 0.00046 ];
DF_CORN_OUT_CURR          (idx, [1:  16]) = [  8.34246E-02 0.00024  1.60379E-02 0.00049  8.34010E-02 0.00022  1.60312E-02 0.00053  8.30812E-02 0.00022  1.66669E-02 0.00045  8.31015E-02 0.00019  1.66664E-02 0.00046 ];
DF_CORN_NET_CURR          (idx, [1:  16]) = [  1.34151E-04 0.14269 -1.23908E-04 0.06012  1.77808E-04 0.11973 -1.29232E-04 0.05840 -6.20621E-05 0.32314  8.24585E-05 0.13701 -5.01536E-05 0.47911  6.88560E-05 0.13304 ];
DF_HET_VOL_FLUX           (idx, [1:   4]) = [  2.66030E-01 5.5E-05  4.87475E-02 0.00010 ];
DF_HET_SURF_FLUX          (idx, [1:  24]) = [  2.66603E-01 6.2E-05  4.95338E-02 0.00017  2.63370E-01 6.9E-05  5.33091E-02 0.00016  2.66610E-01 4.7E-05  4.95238E-02 0.00015  2.65538E-01 8.6E-05  4.98383E-02 0.00012  2.66026E-01 0.00019  4.84632E-02 0.00046  2.66150E-01 0.00025  4.84397E-02 0.00059 ];
DF_HET_CORN_FLUX          (idx, [1:  16]) = [  2.63994E-01 0.00033  5.09769E-02 0.00078  2.63975E-01 0.00024  5.10065E-02 0.00069  2.62290E-01 0.00026  5.33826E-02 0.00068  2.62487E-01 0.00023  5.33242E-02 0.00062 ];
DF_HOM_VOL_FLUX           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HOM_SURF_FLUX          (idx, [1:  24]) = [  2.66030E-01 5.5E-05  4.87475E-02 0.00010  2.66030E-01 5.5E-05  4.87475E-02 0.00010  2.66030E-01 5.5E-05  4.87475E-02 0.00010  2.66030E-01 5.5E-05  4.87475E-02 0.00010  2.66030E-01 5.5E-05  4.87475E-02 0.00010  2.66030E-01 5.5E-05  4.87475E-02 0.00010 ];
DF_HOM_CORN_FLUX          (idx, [1:  16]) = [  2.66030E-01 5.5E-05  4.87475E-02 0.00010  2.66030E-01 5.5E-05  4.87475E-02 0.00010  2.66030E-01 5.5E-05  4.87475E-02 0.00010  2.66030E-01 5.5E-05  4.87475E-02 0.00010 ];
DF_SURF_DF                (idx, [1:  24]) = [  1.00215E+00 4.5E-05  1.01613E+00 0.00014  9.90000E-01 5.6E-05  1.09358E+00 0.00014  1.00218E+00 3.6E-05  1.01593E+00 0.00014  9.98148E-01 5.4E-05  1.02238E+00 0.00012  9.99983E-01 0.00018  9.94168E-01 0.00047  1.00045E+00 0.00024  9.93685E-01 0.00058 ];
DF_CORN_DF                (idx, [1:  16]) = [  9.92346E-01 0.00033  1.04573E+00 0.00078  9.92274E-01 0.00026  1.04634E+00 0.00072  9.85939E-01 0.00027  1.09509E+00 0.00068  9.86683E-01 0.00023  1.09389E+00 0.00063 ];
DF_SGN_SURF_IN_CURR       (idx, [1:  24]) = [  4.10955E-05 1.00000 -7.45005E-04 0.03290 -1.79640E-05 1.00000 -3.51437E-05 0.74537 -3.07208E-05 1.00000 -7.99198E-04 0.03036 -5.91515E-05 1.00000 -2.34600E-05 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_OUT_CURR      (idx, [1:  24]) = [  3.02105E-03 0.01831 -2.64243E-03 0.00848  4.83468E-05 1.00000  1.29023E-05 1.00000  3.04273E-03 0.01735 -2.64136E-03 0.00981 -5.91515E-05 1.00000 -2.34600E-05 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_NET_CURR      (idx, [1:  24]) = [ -2.97995E-03 0.02328  1.89742E-03 0.01564 -6.63108E-05 1.00000 -4.80459E-05 0.66911 -3.07345E-03 0.02152  1.84216E-03 0.01539 -7.94641E-22 1.00000  3.40401E-22 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HET_SURF_FLUX      (idx, [1:  24]) = [  3.74235E-04 0.04663 -5.17093E-04 0.01613  5.19695E-06 1.00000  5.61424E-06 1.00000  3.46040E-04 0.04943 -5.25050E-04 0.02011 -1.53612E-05 1.00000 -4.88834E-06 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HOM_SURF_FLUX      (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_DF            (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.32' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov  9 2021 21:59:44' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 10])  = 'PWR W17x17' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:  7])  = 'Serp3x3' ;
WORKING_DIRECTORY         (idx, [1: 59])  = '/home/current/a/rizkiokt/Runs/run_11-28-21_Serpent_3x3_pins' ;
HOSTNAME                  (idx, [1: 24])  = 'current01.ecn.purdue.edu' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Xeon(R) Gold 6152 CPU @ 2.10GHz' ;
CPU_MHZ                   (idx, 1)        = 33581830.0 ;
START_DATE                (idx, [1: 24])  = 'Sun Nov 28 22:04:16 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sun Nov 28 22:52:42 2021' ;

% Run parameters:

POP                       (idx, 1)        = 500000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 100 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1625068908699 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 44 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  44]) = [  1.01418E+00  9.99259E-01  9.98143E-01  1.00266E+00  1.00225E+00  1.00297E+00  1.00030E+00  9.99594E-01  1.00334E+00  9.95421E-01  9.98258E-01  9.89575E-01  9.95444E-01  1.00328E+00  1.00452E+00  9.98562E-01  9.98442E-01  1.00132E+00  1.00292E+00  9.99399E-01  1.00010E+00  9.99775E-01  1.00213E+00  1.00301E+00  9.97437E-01  1.00272E+00  1.00179E+00  9.98333E-01  9.97895E-01  9.97378E-01  9.99808E-01  1.00024E+00  9.99725E-01  1.00134E+00  1.00252E+00  9.99371E-01  9.96081E-01  9.93536E-01  9.99567E-01  9.99376E-01  9.95197E-01  9.98444E-01  1.00198E+00  1.00245E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 57])  = '/home/current/a/rizkiokt/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.2E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.50237E-02 0.00011  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.84976E-01 1.7E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.65133E-01 7.6E-06  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.65672E-01 7.6E-06  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.10555E+00 3.3E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.02954E+00 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.48618E+01 3.4E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 250000344 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.56569E+03 ;
RUNNING_TIME              (idx, 1)        =  4.84210E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.19850E-01  1.19850E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.51666E-03  2.51666E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.82986E+01  4.82986E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.84077E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 32.33489 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.28552E+01 0.00072 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.26980E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 191860.65 ;
ALLOC_MEMSIZE             (idx, 1)        = 4174.28;
MEMSIZE                   (idx, 1)        = 3879.31;
XS_MEMSIZE                (idx, 1)        = 401.30;
MAT_MEMSIZE               (idx, 1)        = 28.70;
RES_MEMSIZE               (idx, 1)        = 110.40;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 3338.90;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 294.97;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 11 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 169724 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 11 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 24 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 24 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 548 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:  9])  = [ 0 0 0 0 0 0 0 0 0 ];
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  1.99710E-06 5.2E-05  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  4.80936E-01 0.00015 ];
U235_FISS                 (idx, [1:   4]) = [  4.50733E-01 7.3E-05  9.39504E-01 2.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  2.90235E-02 0.00038  6.04961E-02 0.00036 ];
U235_CAPT                 (idx, [1:   4]) = [  1.00242E-01 0.00019  1.92647E-01 0.00018 ];
U238_CAPT                 (idx, [1:   4]) = [  2.65000E-01 0.00012  5.09284E-01 8.8E-05 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 250000344 2.50000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 3.86939E+05 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 130067826 1.30274E+08 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 119932518 1.20113E+08 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -2.65241E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.55663E-11 2.7E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  4.05378E-16 2.7E-05 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.17994E+00 2.6E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.79653E-01 2.7E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.20347E-01 2.5E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98551E-01 5.2E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.50908E+01 4.2E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.95057E+01 3.3E-05 ];
INI_FMASS                 (idx, 1)        =  3.83996E-02 ;
TOT_FMASS                 (idx, 1)        =  3.83996E-02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.83062E+00 4.8E-05 ];
SIX_FF_F                  (idx, [1:   2]) = [  7.95599E-01 4.1E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  6.36203E-01 4.7E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.27555E+00 4.8E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45998E+00 1.8E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02558E+02 1.8E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.18189E+00 6.5E-05  1.17383E+00 6.4E-05  8.08075E-03 0.00102 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.18165E+00 6.5E-05 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.73796E+01 2.6E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.73800E+01 1.2E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  5.66479E-07 0.00044 ];
IMP_EALF                  (idx, [1:   2]) = [  5.66232E-07 0.00020 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  2.07321E-01 0.00038 ];
IMP_AFGE                  (idx, [1:   2]) = [  2.07222E-01 0.00017 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.02678E-03 0.00075  1.72744E-04 0.00446  9.55084E-04 0.00185  9.43582E-04 0.00181  2.76593E-03 0.00113  8.92720E-04 0.00195  2.96720E-04 0.00344 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.06595E-01 0.00179  1.24908E-02 2.9E-07  3.16569E-02 2.8E-05  1.10164E-01 3.7E-05  3.20558E-01 2.9E-05  1.34575E+00 2.3E-05  8.88662E+00 0.00019 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.89329E-03 0.00113  1.98220E-04 0.00636  1.09514E-03 0.00258  1.07955E-03 0.00272  3.15951E-03 0.00170  1.02165E-03 0.00288  3.39219E-04 0.00501 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.06165E-01 0.00260  1.24908E-02 4.4E-07  3.16577E-02 4.2E-05  1.10168E-01 5.6E-05  3.20577E-01 4.5E-05  1.34579E+00 3.1E-05  8.88376E+00 0.00030 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.99160E-05 0.00014  1.99052E-05 0.00014  2.14793E-05 0.00147 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.35384E-05 0.00013  2.35257E-05 0.00013  2.53861E-05 0.00146 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.83782E-03 0.00103  1.94925E-04 0.00651  1.08713E-03 0.00266  1.07343E-03 0.00270  3.13198E-03 0.00160  1.01336E-03 0.00289  3.37001E-04 0.00487 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.06794E-01 0.00257  1.24908E-02 4.5E-07  3.16568E-02 4.3E-05  1.10165E-01 5.6E-05  3.20578E-01 4.6E-05  1.34577E+00 3.2E-05  8.88463E+00 0.00029 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.99156E-05 0.00031  1.99043E-05 0.00031  2.15657E-05 0.00342 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.35379E-05 0.00030  2.35246E-05 0.00030  2.54883E-05 0.00341 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.85160E-03 0.00342  2.00895E-04 0.02024  1.10231E-03 0.00832  1.05814E-03 0.00825  3.15176E-03 0.00485  1.00073E-03 0.00884  3.37771E-04 0.01529 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.04077E-01 0.00798  1.24908E-02 1.4E-06  3.16619E-02 0.00012  1.10164E-01 0.00017  3.20565E-01 0.00013  1.34559E+00 9.9E-05  8.87858E+00 0.00082 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.85211E-03 0.00326  2.00562E-04 0.01954  1.09844E-03 0.00797  1.06133E-03 0.00807  3.15310E-03 0.00461  1.00123E-03 0.00866  3.37440E-04 0.01461 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.04272E-01 0.00773  1.24908E-02 1.4E-06  3.16633E-02 0.00012  1.10168E-01 0.00016  3.20569E-01 0.00013  1.34562E+00 9.5E-05  8.88083E+00 0.00081 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -3.44236E+02 0.00342 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.99363E-05 8.8E-05 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.35624E-05 5.6E-05 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.85305E-03 0.00063 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -3.43749E+02 0.00064 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  4.20984E-07 6.8E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.98483E-06 6.0E-05  2.98485E-06 6.0E-05  2.98290E-06 0.00072 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  2.64056E-05 7.8E-05  2.64054E-05 7.9E-05  2.64328E-05 0.00091 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  6.36752E-01 4.7E-05  6.35896E-01 4.7E-05  7.78250E-01 0.00120 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.02639E+01 0.00187 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.95043E+01 3.5E-05  3.22182E+01 4.7E-05 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  3])  = '003' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+01  6.25000E-07  1.00000E-11 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  3.98890E+05 0.00110  1.61255E+06 0.00053  3.35326E+06 0.00027  3.65783E+06 0.00028  3.40615E+06 0.00027  3.71536E+06 0.00028  2.52605E+06 0.00023  2.24739E+06 0.00023  1.71528E+06 0.00029  1.39759E+06 0.00024  1.20398E+06 0.00040  1.08416E+06 0.00036  9.99702E+05 0.00045  9.49205E+05 0.00042  9.24234E+05 0.00038  7.97886E+05 0.00032  7.86728E+05 0.00038  7.79418E+05 0.00039  7.64234E+05 0.00034  1.48768E+06 0.00032  1.42755E+06 0.00027  1.02473E+06 0.00039  6.60771E+05 0.00046  7.55119E+05 0.00025  7.07859E+05 0.00043  6.48578E+05 0.00040  1.04765E+06 0.00032  2.42013E+05 0.00063  3.03807E+05 0.00048  2.76273E+05 0.00054  1.59819E+05 0.00072  2.78583E+05 0.00076  1.89188E+05 0.00093  1.60078E+05 0.00080  3.02798E+04 0.00132  3.00535E+04 0.00183  3.09172E+04 0.00124  3.18124E+04 0.00162  3.15678E+04 0.00164  3.11599E+04 0.00159  3.22847E+04 0.00135  3.03097E+04 0.00164  5.72355E+04 0.00123  9.13638E+04 0.00101  1.16237E+05 0.00073  3.05577E+05 0.00051  3.19292E+05 0.00057  3.38861E+05 0.00046  2.20338E+05 0.00055  1.58129E+05 0.00041  1.19262E+05 0.00076  1.36283E+05 0.00066  2.47305E+05 0.00067  3.18552E+05 0.00047  5.78982E+05 0.00047  8.35186E+05 0.00044  1.16942E+06 0.00027  7.14380E+05 0.00039  4.97833E+05 0.00035  3.50596E+05 0.00040  3.10215E+05 0.00049  3.00407E+05 0.00045  2.47319E+05 0.00049  1.64479E+05 0.00052  1.50341E+05 0.00062  1.31676E+05 0.00048  1.09841E+05 0.00056  8.50460E+04 0.00052  5.56432E+04 0.00092  1.90822E+04 0.00123 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.21453E+00 0.00019 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  4.24468E+00 7.2E-05  7.56748E-01 0.00020 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  5.22155E-01 5.0E-05  1.26345E+00 5.1E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.63312E-03 0.00024  3.76248E-02 9.5E-05 ];
INF_ABS                   (idx, [1:   4]) = [  1.05737E-02 0.00019  9.93073E-02 0.00016 ];
INF_FISS                  (idx, [1:   4]) = [  2.94058E-03 0.00017  6.16825E-02 0.00020 ];
INF_NSF                   (idx, [1:   4]) = [  7.49452E-03 0.00016  1.50302E-01 0.00020 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.54866E+00 1.4E-05  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03653E+02 1.7E-06  2.02270E+02 4.7E-09 ];
INF_INVV                  (idx, [1:   4]) = [  5.74710E-08 0.00017  2.37261E-06 6.0E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  5.11582E-01 4.8E-05  1.16414E+00 5.9E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.23175E-01 9.4E-05  3.04432E-01 0.00015 ];
INF_SCATT2                (idx, [1:   4]) = [  8.82248E-02 0.00012  7.58627E-02 0.00043 ];
INF_SCATT3                (idx, [1:   4]) = [  7.50515E-03 0.00101  2.30170E-02 0.00174 ];
INF_SCATT4                (idx, [1:   4]) = [ -8.65351E-03 0.00074 -5.34337E-03 0.00674 ];
INF_SCATT5                (idx, [1:   4]) = [  4.90094E-04 0.01750  4.42553E-03 0.00623 ];
INF_SCATT6                (idx, [1:   4]) = [  4.74597E-03 0.00135 -1.15413E-02 0.00206 ];
INF_SCATT7                (idx, [1:   4]) = [  7.33369E-04 0.00795 -2.18727E-04 0.09381 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  5.11627E-01 4.9E-05  1.16414E+00 5.9E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.23176E-01 9.4E-05  3.04432E-01 0.00015 ];
INF_SCATTP2               (idx, [1:   4]) = [  8.82251E-02 0.00012  7.58627E-02 0.00043 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.50517E-03 0.00100  2.30170E-02 0.00174 ];
INF_SCATTP4               (idx, [1:   4]) = [ -8.65351E-03 0.00074 -5.34337E-03 0.00674 ];
INF_SCATTP5               (idx, [1:   4]) = [  4.90000E-04 0.01748  4.42553E-03 0.00623 ];
INF_SCATTP6               (idx, [1:   4]) = [  4.74590E-03 0.00135 -1.15413E-02 0.00206 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.33379E-04 0.00797 -2.18727E-04 0.09381 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.21838E-01 0.00011  8.48463E-01 7.9E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.50260E+00 0.00011  3.92867E-01 7.9E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.05285E-02 0.00019  9.93073E-02 0.00016 ];
INF_REMXS                 (idx, [1:   4]) = [  2.63558E-02 0.00020  1.01019E-01 0.00025 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
PM149_LAMBDA              (idx, 1)        =  0.00000E+00 ;
I135_LAMBDA               (idx, 1)        =  0.00000E+00 ;
XE135_LAMBDA              (idx, 1)        =  0.00000E+00 ;
XE135M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
I135_BR                   (idx, 1)        =  0.00000E+00 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  4.95799E-01 4.8E-05  1.57825E-02 0.00026  1.70733E-03 0.00194  1.16244E+00 5.9E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.18616E-01 9.5E-05  4.55981E-03 0.00048  6.23139E-04 0.00352  3.03809E-01 0.00015 ];
INF_S2                    (idx, [1:   8]) = [  8.95924E-02 0.00012 -1.36755E-03 0.00081  3.45235E-04 0.00446  7.55174E-02 0.00043 ];
INF_S3                    (idx, [1:   8]) = [  9.11968E-03 0.00085 -1.61453E-03 0.00081  1.24182E-04 0.00877  2.28928E-02 0.00176 ];
INF_S4                    (idx, [1:   8]) = [ -8.12027E-03 0.00080 -5.33240E-04 0.00163  6.12499E-07 1.00000 -5.34398E-03 0.00669 ];
INF_S5                    (idx, [1:   8]) = [  4.74890E-04 0.01762  1.52040E-05 0.07024 -5.03832E-05 0.02298  4.47591E-03 0.00621 ];
INF_S6                    (idx, [1:   8]) = [  4.87332E-03 0.00132 -1.27348E-04 0.00781 -6.46207E-05 0.01508 -1.14767E-02 0.00206 ];
INF_S7                    (idx, [1:   8]) = [  8.81218E-04 0.00653 -1.47849E-04 0.00450 -5.80825E-05 0.01809 -1.60645E-04 0.12568 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  4.95845E-01 4.8E-05  1.57825E-02 0.00026  1.70733E-03 0.00194  1.16244E+00 5.9E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.18616E-01 9.5E-05  4.55981E-03 0.00048  6.23139E-04 0.00352  3.03809E-01 0.00015 ];
INF_SP2                   (idx, [1:   8]) = [  8.95926E-02 0.00012 -1.36755E-03 0.00081  3.45235E-04 0.00446  7.55174E-02 0.00043 ];
INF_SP3                   (idx, [1:   8]) = [  9.11970E-03 0.00085 -1.61453E-03 0.00081  1.24182E-04 0.00877  2.28928E-02 0.00176 ];
INF_SP4                   (idx, [1:   8]) = [ -8.12027E-03 0.00080 -5.33240E-04 0.00163  6.12499E-07 1.00000 -5.34398E-03 0.00669 ];
INF_SP5                   (idx, [1:   8]) = [  4.74796E-04 0.01760  1.52040E-05 0.07024 -5.03832E-05 0.02298  4.47591E-03 0.00621 ];
INF_SP6                   (idx, [1:   8]) = [  4.87324E-03 0.00133 -1.27348E-04 0.00781 -6.46207E-05 0.01508 -1.14767E-02 0.00206 ];
INF_SP7                   (idx, [1:   8]) = [  8.81229E-04 0.00654 -1.47849E-04 0.00450 -5.80825E-05 0.01809 -1.60645E-04 0.12568 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  7.87432E-02 0.00018  2.57955E-01 0.00047 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  7.87885E-02 0.00022  2.57463E-01 0.00083 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  7.87424E-02 0.00024  2.58464E-01 0.00075 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  7.86989E-02 0.00022  2.57945E-01 0.00079 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  4.23317E+00 0.00018  1.29222E+00 0.00047 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  4.23074E+00 0.00022  1.29470E+00 0.00082 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  4.23322E+00 0.00024  1.28969E+00 0.00075 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  4.23556E+00 0.00022  1.29228E+00 0.00079 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.89151E-03 0.00226  1.97481E-04 0.01353  1.09957E-03 0.00562  1.07225E-03 0.00594  3.16980E-03 0.00335  1.01492E-03 0.00601  3.37487E-04 0.01030 ];
LAMBDA                    (idx, [1:  14]) = [  8.03028E-01 0.00540  1.24908E-02 9.7E-07  3.16612E-02 8.6E-05  1.10190E-01 0.00012  3.20569E-01 9.5E-05  1.34567E+00 6.2E-05  8.87931E+00 0.00061 ];

% Assembly discontinuity factors (order: W-S-E-N / NW-NE-SE-SW):

DF_SURFACE                (idx, [1:  3])  = '003' ;
DF_SURFACE_TYPE           (idx, 1)        = 15 ;
DF_SYM                    (idx, 1)        = 0 ;
DF_N_SURF                 (idx, 1)        = 6 ;
DF_N_CORN                 (idx, 1)        = 4 ;
DF_VOLUME                 (idx, 1)        =  1.59264E+01 ;
DF_SURF_AREA              (idx, [1:  6])  = [ 1.26200E+01  1.26200E+01  1.26200E+01  1.26200E+01  1.59264E+00  1.59264E+00 ];
DF_MID_AREA               (idx, [1:  6])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_CORN_AREA              (idx, [1:  4])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_SURF_IN_CURR           (idx, [1:  24]) = [  8.37942E-01 6.2E-05  1.58614E-01 0.00015  8.37895E-01 6.9E-05  1.58561E-01 0.00019  8.39382E-01 6.3E-05  1.54019E-01 0.00027  8.39354E-01 7.2E-05  1.54038E-01 0.00022  1.06190E-01 0.00022  1.88034E-02 0.00049  1.06207E-01 0.00024  1.87942E-02 0.00059 ];
DF_SURF_OUT_CURR          (idx, [1:  24]) = [  8.44367E-01 5.0E-05  1.53881E-01 0.00017  8.44278E-01 9.3E-05  1.53838E-01 0.00021  8.39382E-01 6.3E-05  1.54019E-01 0.00027  8.39354E-01 7.2E-05  1.54038E-01 0.00022  1.06190E-01 0.00022  1.88034E-02 0.00049  1.06207E-01 0.00024  1.87942E-02 0.00059 ];
DF_SURF_NET_CURR          (idx, [1:  24]) = [ -6.42493E-03 0.00792  4.73231E-03 0.00416 -6.38272E-03 0.00869  4.72232E-03 0.00512  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  2.38861E-08 1.00000 -4.79914E-08 0.43491 -4.39785E-08 1.00000  4.39841E-08 0.49169 ];
DF_MID_IN_CURR            (idx, [1:  24]) = [  8.45156E-02 0.00025  1.51822E-02 0.00046  8.45592E-02 0.00021  1.51808E-02 0.00044  8.45297E-02 0.00021  1.48871E-02 0.00047  8.45698E-02 0.00017  1.49011E-02 0.00053  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_OUT_CURR           (idx, [1:  24]) = [  8.50335E-02 0.00021  1.48515E-02 0.00056  8.50259E-02 0.00019  1.48473E-02 0.00044  8.45297E-02 0.00021  1.48871E-02 0.00047  8.45698E-02 0.00017  1.49011E-02 0.00053  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_NET_CURR           (idx, [1:  24]) = [ -5.17898E-04 0.05781  3.30630E-04 0.03315 -4.66672E-04 0.06087  3.33455E-04 0.02975  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_CORN_IN_CURR           (idx, [1:  16]) = [  8.33944E-02 0.00023  1.60003E-02 0.00067  8.34898E-02 0.00023  1.58181E-02 0.00088  8.34125E-02 0.00019  1.60151E-02 0.00064  8.23176E-02 0.00024  1.72144E-02 0.00048 ];
DF_CORN_OUT_CURR          (idx, [1:  16]) = [  8.35722E-02 0.00023  1.58711E-02 0.00067  8.34898E-02 0.00023  1.58181E-02 0.00088  8.35647E-02 0.00021  1.58827E-02 0.00065  8.38986E-02 0.00021  1.60826E-02 0.00054 ];
DF_CORN_NET_CURR          (idx, [1:  16]) = [ -1.77808E-04 0.11973  1.29232E-04 0.05840  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -1.52242E-04 0.12533  1.32470E-04 0.06321 -1.58102E-03 0.00940  1.13181E-03 0.00896 ];
DF_HET_VOL_FLUX           (idx, [1:   4]) = [  2.66508E-01 5.2E-05  4.75213E-02 0.00017 ];
DF_HET_SURF_FLUX          (idx, [1:  24]) = [  2.66610E-01 4.7E-05  4.95238E-02 0.00015  2.66588E-01 7.5E-05  4.95085E-02 0.00018  2.66048E-01 6.3E-05  4.88173E-02 0.00027  2.66039E-01 7.2E-05  4.88234E-02 0.00022  2.66701E-01 0.00022  4.72256E-02 0.00049  2.66744E-01 0.00024  4.72025E-02 0.00059 ];
DF_HET_CORN_FLUX          (idx, [1:  16]) = [  2.63914E-01 0.00032  5.09330E-02 0.00089  2.64354E-01 0.00031  5.05456E-02 0.00101  2.63900E-01 0.00023  5.09437E-02 0.00060  2.62425E-01 0.00027  5.31898E-02 0.00070 ];
DF_HOM_VOL_FLUX           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HOM_SURF_FLUX          (idx, [1:  24]) = [  2.66508E-01 5.2E-05  4.75213E-02 0.00017  2.66508E-01 5.2E-05  4.75213E-02 0.00017  2.66508E-01 5.2E-05  4.75213E-02 0.00017  2.66508E-01 5.2E-05  4.75213E-02 0.00017  2.66508E-01 5.2E-05  4.75213E-02 0.00017  2.66508E-01 5.2E-05  4.75213E-02 0.00017 ];
DF_HOM_CORN_FLUX          (idx, [1:  16]) = [  2.66508E-01 5.2E-05  4.75213E-02 0.00017  2.66508E-01 5.2E-05  4.75213E-02 0.00017  2.66508E-01 5.2E-05  4.75213E-02 0.00017  2.66508E-01 5.2E-05  4.75213E-02 0.00017 ];
DF_SURF_DF                (idx, [1:  24]) = [  1.00038E+00 3.2E-05  1.04214E+00 0.00012  1.00030E+00 4.3E-05  1.04182E+00 0.00012  9.98273E-01 4.9E-05  1.02727E+00 0.00017  9.98240E-01 4.6E-05  1.02740E+00 0.00012  1.00072E+00 0.00022  9.93778E-01 0.00053  1.00089E+00 0.00025  9.93292E-01 0.00053 ];
DF_CORN_DF                (idx, [1:  16]) = [  9.90267E-01 0.00033  1.07179E+00 0.00089  9.91916E-01 0.00033  1.06364E+00 0.00094  9.90214E-01 0.00022  1.07202E+00 0.00062  9.84680E-01 0.00029  1.11928E+00 0.00070 ];
DF_SGN_SURF_IN_CURR       (idx, [1:  24]) = [  3.04273E-03 0.01735 -2.64136E-03 0.00981  3.03897E-03 0.02106 -2.61440E-03 0.00824  8.24598E-04 0.06459 -3.52666E-04 0.08347  7.21229E-04 0.10599 -3.44186E-04 0.06471  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_OUT_CURR      (idx, [1:  24]) = [ -3.07208E-05 1.00000 -7.99198E-04 0.03036 -1.03248E-05 1.00000 -8.22550E-04 0.02713  8.24598E-04 0.06459 -3.52666E-04 0.08347  7.21229E-04 0.10599 -3.44186E-04 0.06471  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_NET_CURR      (idx, [1:  24]) = [  3.07345E-03 0.02152 -1.84216E-03 0.01539  3.04930E-03 0.02954 -1.79185E-03 0.01633  1.58923E-21 1.00000  1.13487E-22 1.00000  9.08330E-22 0.59074  2.27034E-22 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HET_SURF_FLUX      (idx, [1:  24]) = [  3.46040E-04 0.04943 -5.25050E-04 0.02011  3.43911E-04 0.05161 -5.31320E-04 0.01350  9.43155E-05 0.27524 -9.52787E-05 0.14112  1.03062E-04 0.33778 -8.21480E-05 0.13768  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HOM_SURF_FLUX      (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_DF            (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.32' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov  9 2021 21:59:44' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 10])  = 'PWR W17x17' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:  7])  = 'Serp3x3' ;
WORKING_DIRECTORY         (idx, [1: 59])  = '/home/current/a/rizkiokt/Runs/run_11-28-21_Serpent_3x3_pins' ;
HOSTNAME                  (idx, [1: 24])  = 'current01.ecn.purdue.edu' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Xeon(R) Gold 6152 CPU @ 2.10GHz' ;
CPU_MHZ                   (idx, 1)        = 33581830.0 ;
START_DATE                (idx, [1: 24])  = 'Sun Nov 28 22:04:16 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sun Nov 28 22:52:42 2021' ;

% Run parameters:

POP                       (idx, 1)        = 500000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 100 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1625068908699 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 44 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  44]) = [  1.01418E+00  9.99259E-01  9.98143E-01  1.00266E+00  1.00225E+00  1.00297E+00  1.00030E+00  9.99594E-01  1.00334E+00  9.95421E-01  9.98258E-01  9.89575E-01  9.95444E-01  1.00328E+00  1.00452E+00  9.98562E-01  9.98442E-01  1.00132E+00  1.00292E+00  9.99399E-01  1.00010E+00  9.99775E-01  1.00213E+00  1.00301E+00  9.97437E-01  1.00272E+00  1.00179E+00  9.98333E-01  9.97895E-01  9.97378E-01  9.99808E-01  1.00024E+00  9.99725E-01  1.00134E+00  1.00252E+00  9.99371E-01  9.96081E-01  9.93536E-01  9.99567E-01  9.99376E-01  9.95197E-01  9.98444E-01  1.00198E+00  1.00245E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 57])  = '/home/current/a/rizkiokt/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.2E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.50237E-02 0.00011  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.84976E-01 1.7E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.65133E-01 7.6E-06  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.65672E-01 7.6E-06  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.10555E+00 3.3E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.02954E+00 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.48618E+01 3.4E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 250000344 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.56569E+03 ;
RUNNING_TIME              (idx, 1)        =  4.84210E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.19850E-01  1.19850E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.51666E-03  2.51666E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.82986E+01  4.82986E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.84077E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 32.33489 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.28552E+01 0.00072 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.26979E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 191860.65 ;
ALLOC_MEMSIZE             (idx, 1)        = 4174.28;
MEMSIZE                   (idx, 1)        = 3879.31;
XS_MEMSIZE                (idx, 1)        = 401.30;
MAT_MEMSIZE               (idx, 1)        = 28.70;
RES_MEMSIZE               (idx, 1)        = 110.40;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 3338.90;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 294.97;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 11 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 169724 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 11 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 24 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 24 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 548 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:  9])  = [ 0 0 0 0 0 0 0 0 0 ];
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  1.99710E-06 5.2E-05  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  4.80936E-01 0.00015 ];
U235_FISS                 (idx, [1:   4]) = [  4.50733E-01 7.3E-05  9.39504E-01 2.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  2.90235E-02 0.00038  6.04961E-02 0.00036 ];
U235_CAPT                 (idx, [1:   4]) = [  1.00242E-01 0.00019  1.92647E-01 0.00018 ];
U238_CAPT                 (idx, [1:   4]) = [  2.65000E-01 0.00012  5.09284E-01 8.8E-05 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 250000344 2.50000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 3.86939E+05 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 130067826 1.30274E+08 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 119932518 1.20113E+08 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -2.65241E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.55663E-11 2.7E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  4.05378E-16 2.7E-05 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.17994E+00 2.6E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.79653E-01 2.7E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.20347E-01 2.5E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98551E-01 5.2E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.50908E+01 4.2E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.95057E+01 3.3E-05 ];
INI_FMASS                 (idx, 1)        =  3.83996E-02 ;
TOT_FMASS                 (idx, 1)        =  3.83996E-02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.83062E+00 4.8E-05 ];
SIX_FF_F                  (idx, [1:   2]) = [  7.95599E-01 4.1E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  6.36203E-01 4.7E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.27555E+00 4.8E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45998E+00 1.8E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02558E+02 1.8E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.18189E+00 6.5E-05  1.17383E+00 6.4E-05  8.08075E-03 0.00102 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.18165E+00 6.5E-05 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.73796E+01 2.6E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.73800E+01 1.2E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  5.66479E-07 0.00044 ];
IMP_EALF                  (idx, [1:   2]) = [  5.66232E-07 0.00020 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  2.07321E-01 0.00038 ];
IMP_AFGE                  (idx, [1:   2]) = [  2.07222E-01 0.00017 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.02678E-03 0.00075  1.72744E-04 0.00446  9.55084E-04 0.00185  9.43582E-04 0.00181  2.76593E-03 0.00113  8.92720E-04 0.00195  2.96720E-04 0.00344 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.06595E-01 0.00179  1.24908E-02 2.9E-07  3.16569E-02 2.8E-05  1.10164E-01 3.7E-05  3.20558E-01 2.9E-05  1.34575E+00 2.3E-05  8.88662E+00 0.00019 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.89329E-03 0.00113  1.98220E-04 0.00636  1.09514E-03 0.00258  1.07955E-03 0.00272  3.15951E-03 0.00170  1.02165E-03 0.00288  3.39219E-04 0.00501 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.06165E-01 0.00260  1.24908E-02 4.4E-07  3.16577E-02 4.2E-05  1.10168E-01 5.6E-05  3.20577E-01 4.5E-05  1.34579E+00 3.1E-05  8.88376E+00 0.00030 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.99160E-05 0.00014  1.99052E-05 0.00014  2.14793E-05 0.00147 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.35384E-05 0.00013  2.35257E-05 0.00013  2.53861E-05 0.00146 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.83782E-03 0.00103  1.94925E-04 0.00651  1.08713E-03 0.00266  1.07343E-03 0.00270  3.13198E-03 0.00160  1.01336E-03 0.00289  3.37001E-04 0.00487 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.06794E-01 0.00257  1.24908E-02 4.5E-07  3.16568E-02 4.3E-05  1.10165E-01 5.6E-05  3.20578E-01 4.6E-05  1.34577E+00 3.2E-05  8.88463E+00 0.00029 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.99156E-05 0.00031  1.99043E-05 0.00031  2.15657E-05 0.00342 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.35379E-05 0.00030  2.35246E-05 0.00030  2.54883E-05 0.00341 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.85160E-03 0.00342  2.00895E-04 0.02024  1.10231E-03 0.00832  1.05814E-03 0.00825  3.15176E-03 0.00485  1.00073E-03 0.00884  3.37771E-04 0.01529 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.04077E-01 0.00798  1.24908E-02 1.4E-06  3.16619E-02 0.00012  1.10164E-01 0.00017  3.20565E-01 0.00013  1.34559E+00 9.9E-05  8.87858E+00 0.00082 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.85211E-03 0.00326  2.00562E-04 0.01954  1.09844E-03 0.00797  1.06133E-03 0.00807  3.15310E-03 0.00461  1.00123E-03 0.00866  3.37440E-04 0.01461 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.04272E-01 0.00773  1.24908E-02 1.4E-06  3.16633E-02 0.00012  1.10168E-01 0.00016  3.20569E-01 0.00013  1.34562E+00 9.5E-05  8.88083E+00 0.00081 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -3.44236E+02 0.00342 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.99363E-05 8.8E-05 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.35624E-05 5.6E-05 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.85305E-03 0.00063 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -3.43749E+02 0.00064 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  4.20984E-07 6.8E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.98483E-06 6.0E-05  2.98485E-06 6.0E-05  2.98290E-06 0.00072 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  2.64056E-05 7.8E-05  2.64054E-05 7.9E-05  2.64328E-05 0.00091 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  6.36752E-01 4.7E-05  6.35896E-01 4.7E-05  7.78250E-01 0.00120 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.02639E+01 0.00187 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.95043E+01 3.5E-05  3.22182E+01 4.7E-05 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  3])  = '004' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+01  6.25000E-07  1.00000E-11 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  3.97688E+05 0.00086  1.60589E+06 0.00038  3.34007E+06 0.00027  3.63945E+06 0.00023  3.38745E+06 0.00018  3.68908E+06 0.00024  2.51072E+06 0.00020  2.23403E+06 0.00026  1.70727E+06 0.00029  1.39211E+06 0.00032  1.20197E+06 0.00028  1.08231E+06 0.00038  9.98333E+05 0.00033  9.49049E+05 0.00035  9.24771E+05 0.00033  7.98111E+05 0.00028  7.86973E+05 0.00045  7.79355E+05 0.00043  7.65204E+05 0.00031  1.49064E+06 0.00025  1.43095E+06 0.00027  1.02918E+06 0.00032  6.64247E+05 0.00043  7.60189E+05 0.00036  7.14159E+05 0.00032  6.52238E+05 0.00033  1.05800E+06 0.00033  2.43552E+05 0.00058  3.05645E+05 0.00044  2.77700E+05 0.00083  1.60665E+05 0.00071  2.79427E+05 0.00069  1.89951E+05 0.00069  1.60695E+05 0.00058  3.04982E+04 0.00135  3.02209E+04 0.00134  3.09791E+04 0.00176  3.20251E+04 0.00130  3.17911E+04 0.00154  3.12289E+04 0.00149  3.24030E+04 0.00124  3.03227E+04 0.00179  5.74323E+04 0.00120  9.16263E+04 0.00113  1.16646E+05 0.00073  3.07360E+05 0.00048  3.21101E+05 0.00059  3.41455E+05 0.00062  2.22279E+05 0.00063  1.59909E+05 0.00076  1.20390E+05 0.00076  1.38029E+05 0.00070  2.51163E+05 0.00070  3.23934E+05 0.00050  5.89635E+05 0.00034  8.52656E+05 0.00024  1.19872E+06 0.00027  7.35869E+05 0.00028  5.14093E+05 0.00026  3.63002E+05 0.00040  3.21184E+05 0.00044  3.12083E+05 0.00053  2.57286E+05 0.00053  1.71805E+05 0.00067  1.57204E+05 0.00053  1.37925E+05 0.00061  1.15227E+05 0.00069  8.93214E+04 0.00059  5.84849E+04 0.00076  2.00162E+04 0.00135 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.21650E+00 0.00017 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  4.23681E+00 0.00010  7.76150E-01 0.00013 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  5.23276E-01 3.9E-05  1.26670E+00 5.0E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.75851E-03 0.00021  3.78377E-02 7.4E-05 ];
INF_ABS                   (idx, [1:   4]) = [  1.07140E-02 0.00017  9.99733E-02 0.00011 ];
INF_FISS                  (idx, [1:   4]) = [  2.95547E-03 0.00015  6.21355E-02 0.00014 ];
INF_NSF                   (idx, [1:   4]) = [  7.53086E-03 0.00015  1.51406E-01 0.00014 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.54810E+00 1.4E-05  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03646E+02 1.5E-06  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  5.78829E-08 0.00014  2.38547E-06 5.5E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  5.12558E-01 3.9E-05  1.16671E+00 5.5E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.23603E-01 5.9E-05  3.04056E-01 0.00018 ];
INF_SCATT2                (idx, [1:   4]) = [  8.83825E-02 0.00012  7.55460E-02 0.00045 ];
INF_SCATT3                (idx, [1:   4]) = [  7.50110E-03 0.00104  2.29208E-02 0.00140 ];
INF_SCATT4                (idx, [1:   4]) = [ -8.68056E-03 0.00082 -5.39827E-03 0.00553 ];
INF_SCATT5                (idx, [1:   4]) = [  4.84841E-04 0.01376  4.46857E-03 0.00478 ];
INF_SCATT6                (idx, [1:   4]) = [  4.75181E-03 0.00107 -1.16540E-02 0.00152 ];
INF_SCATT7                (idx, [1:   4]) = [  7.31096E-04 0.00811 -2.53187E-04 0.06174 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  5.12604E-01 3.9E-05  1.16671E+00 5.5E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.23603E-01 5.9E-05  3.04056E-01 0.00018 ];
INF_SCATTP2               (idx, [1:   4]) = [  8.83827E-02 0.00012  7.55460E-02 0.00045 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.50115E-03 0.00105  2.29208E-02 0.00140 ];
INF_SCATTP4               (idx, [1:   4]) = [ -8.68063E-03 0.00082 -5.39827E-03 0.00553 ];
INF_SCATTP5               (idx, [1:   4]) = [  4.84767E-04 0.01381  4.46857E-03 0.00478 ];
INF_SCATTP6               (idx, [1:   4]) = [  4.75183E-03 0.00107 -1.16540E-02 0.00152 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.31169E-04 0.00814 -2.53187E-04 0.06174 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.22298E-01 0.00011  8.51130E-01 9.1E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.49949E+00 0.00011  3.91636E-01 9.1E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.06687E-02 0.00017  9.99733E-02 0.00011 ];
INF_REMXS                 (idx, [1:   4]) = [  2.66137E-02 0.00017  1.01665E-01 0.00021 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
PM149_LAMBDA              (idx, 1)        =  0.00000E+00 ;
I135_LAMBDA               (idx, 1)        =  0.00000E+00 ;
XE135_LAMBDA              (idx, 1)        =  0.00000E+00 ;
XE135M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
I135_BR                   (idx, 1)        =  0.00000E+00 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  4.96662E-01 4.0E-05  1.58960E-02 0.00023  1.67037E-03 0.00198  1.16504E+00 5.5E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.19011E-01 6.3E-05  4.59205E-03 0.00045  6.08165E-04 0.00370  3.03448E-01 0.00018 ];
INF_S2                    (idx, [1:   8]) = [  8.97623E-02 0.00012 -1.37976E-03 0.00097  3.37401E-04 0.00535  7.52086E-02 0.00044 ];
INF_S3                    (idx, [1:   8]) = [  9.13102E-03 0.00082 -1.62992E-03 0.00081  1.20257E-04 0.01282  2.28006E-02 0.00141 ];
INF_S4                    (idx, [1:   8]) = [ -8.14271E-03 0.00088 -5.37845E-04 0.00232  7.48718E-08 1.00000 -5.39834E-03 0.00549 ];
INF_S5                    (idx, [1:   8]) = [  4.66243E-04 0.01455  1.85990E-05 0.05393 -5.06525E-05 0.01786  4.51923E-03 0.00476 ];
INF_S6                    (idx, [1:   8]) = [  4.87568E-03 0.00105 -1.23865E-04 0.00885 -6.38452E-05 0.01605 -1.15901E-02 0.00152 ];
INF_S7                    (idx, [1:   8]) = [  8.79773E-04 0.00670 -1.48678E-04 0.00512 -5.70625E-05 0.01265 -1.96124E-04 0.07840 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  4.96708E-01 4.0E-05  1.58960E-02 0.00023  1.67037E-03 0.00198  1.16504E+00 5.5E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.19011E-01 6.3E-05  4.59205E-03 0.00045  6.08165E-04 0.00370  3.03448E-01 0.00018 ];
INF_SP2                   (idx, [1:   8]) = [  8.97624E-02 0.00012 -1.37976E-03 0.00097  3.37401E-04 0.00535  7.52086E-02 0.00044 ];
INF_SP3                   (idx, [1:   8]) = [  9.13106E-03 0.00082 -1.62992E-03 0.00081  1.20257E-04 0.01282  2.28006E-02 0.00141 ];
INF_SP4                   (idx, [1:   8]) = [ -8.14278E-03 0.00088 -5.37845E-04 0.00232  7.48718E-08 1.00000 -5.39834E-03 0.00549 ];
INF_SP5                   (idx, [1:   8]) = [  4.66168E-04 0.01459  1.85990E-05 0.05393 -5.06525E-05 0.01786  4.51923E-03 0.00476 ];
INF_SP6                   (idx, [1:   8]) = [  4.87570E-03 0.00105 -1.23865E-04 0.00885 -6.38452E-05 0.01605 -1.15901E-02 0.00152 ];
INF_SP7                   (idx, [1:   8]) = [  8.79847E-04 0.00672 -1.48678E-04 0.00512 -5.70625E-05 0.01265 -1.96124E-04 0.07840 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  5.90155E-02 0.00014  1.98961E-01 0.00046 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  5.90397E-02 0.00021  1.99058E-01 0.00071 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  5.90309E-02 0.00017  1.99096E-01 0.00078 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  5.89759E-02 0.00018  1.98733E-01 0.00063 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  5.64824E+00 0.00014  1.67538E+00 0.00046 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  5.64592E+00 0.00021  1.67458E+00 0.00071 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  5.64677E+00 0.00017  1.67426E+00 0.00077 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  5.65203E+00 0.00018  1.67731E+00 0.00063 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.90467E-03 0.00234  1.99846E-04 0.01275  1.09083E-03 0.00541  1.07573E-03 0.00550  3.17165E-03 0.00350  1.02691E-03 0.00568  3.39703E-04 0.00985 ];
LAMBDA                    (idx, [1:  14]) = [  8.07005E-01 0.00515  1.24908E-02 9.0E-07  3.16541E-02 8.4E-05  1.10161E-01 0.00011  3.20590E-01 9.1E-05  1.34581E+00 6.3E-05  8.87867E+00 0.00059 ];

% Assembly discontinuity factors (order: W-S-E-N / NW-NE-SE-SW):

DF_SURFACE                (idx, [1:  3])  = '004' ;
DF_SURFACE_TYPE           (idx, 1)        = 15 ;
DF_SYM                    (idx, 1)        = 0 ;
DF_N_SURF                 (idx, 1)        = 6 ;
DF_N_CORN                 (idx, 1)        = 4 ;
DF_VOLUME                 (idx, 1)        =  1.59264E+01 ;
DF_SURF_AREA              (idx, [1:  6])  = [ 1.26200E+01  1.26200E+01  1.26200E+01  1.26200E+01  1.59264E+00  1.59264E+00 ];
DF_MID_AREA               (idx, [1:  6])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_CORN_AREA              (idx, [1:  4])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_SURF_IN_CURR           (idx, [1:  24]) = [  8.37716E-01 8.4E-05  1.57178E-01 0.00019  8.44322E-01 8.3E-05  1.53861E-01 0.00015  8.16916E-01 9.0E-05  1.78600E-01 0.00017  8.44336E-01 8.2E-05  1.53851E-01 0.00019  1.05958E-01 0.00019  1.93012E-02 0.00061  1.05951E-01 0.00023  1.92970E-02 0.00059 ];
DF_SURF_OUT_CURR          (idx, [1:  24]) = [  8.37716E-01 8.4E-05  1.57178E-01 0.00019  8.37882E-01 8.9E-05  1.58567E-01 0.00015  8.44937E-01 6.5E-05  1.57583E-01 0.00019  8.37948E-01 8.7E-05  1.58603E-01 0.00016  1.05958E-01 0.00019  1.93012E-02 0.00061  1.05951E-01 0.00023  1.92970E-02 0.00059 ];
DF_SURF_NET_CURR          (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  6.44005E-03 0.00873 -4.70624E-03 0.00487 -2.80213E-02 0.00191  2.10168E-02 0.00134  6.38834E-03 0.00863 -4.75176E-03 0.00523 -1.19318E-08 1.00000 -1.19669E-08 1.00000 -3.89278E-09 1.00000 -3.95585E-09 1.00000 ];
DF_MID_IN_CURR            (idx, [1:  24]) = [  8.43697E-02 0.00024  1.53177E-02 0.00050  8.50142E-02 0.00021  1.48526E-02 0.00051  8.14382E-02 0.00026  1.80688E-02 0.00045  8.50455E-02 0.00025  1.48458E-02 0.00053  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_OUT_CURR           (idx, [1:  24]) = [  8.43697E-02 0.00024  1.53177E-02 0.00050  8.45260E-02 0.00021  1.51752E-02 0.00042  8.51114E-02 0.00019  1.53216E-02 0.00058  8.45583E-02 0.00021  1.51897E-02 0.00044  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_NET_CURR           (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.88141E-04 0.04736 -3.22587E-04 0.02570 -3.67312E-03 0.00626  2.74718E-03 0.00371  4.87219E-04 0.04901 -3.43952E-04 0.02878  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_CORN_IN_CURR           (idx, [1:  16]) = [  8.35437E-02 0.00023  1.58881E-02 0.00062  8.30204E-02 0.00019  1.67304E-02 0.00050  8.30099E-02 0.00020  1.67351E-02 0.00048  8.35836E-02 0.00026  1.58876E-02 0.00064 ];
DF_CORN_OUT_CURR          (idx, [1:  16]) = [  8.34075E-02 0.00023  1.60335E-02 0.00054  8.31143E-02 0.00020  1.66511E-02 0.00047  8.31036E-02 0.00019  1.66533E-02 0.00040  8.34569E-02 0.00027  1.60333E-02 0.00064 ];
DF_CORN_NET_CURR          (idx, [1:  16]) = [  1.36253E-04 0.12085 -1.45386E-04 0.04155 -9.39521E-05 0.25412  7.93657E-05 0.11184 -9.37089E-05 0.18749  8.18468E-05 0.09859  1.26719E-04 0.16369 -1.45642E-04 0.05086 ];
DF_HET_VOL_FLUX           (idx, [1:   4]) = [  2.66004E-01 6.9E-05  4.87303E-02 0.00013 ];
DF_HET_SURF_FLUX          (idx, [1:  24]) = [  2.65520E-01 8.4E-05  4.98187E-02 0.00019  2.66593E-01 7.9E-05  4.95131E-02 0.00013  2.63368E-01 7.1E-05  5.32777E-02 0.00016  2.66606E-01 7.8E-05  4.95174E-02 0.00016  2.66119E-01 0.00019  4.84759E-02 0.00061  2.66101E-01 0.00023  4.84654E-02 0.00059 ];
DF_HET_CORN_FLUX          (idx, [1:  16]) = [  2.63928E-01 0.00028  5.09692E-02 0.00060  2.62389E-01 0.00026  5.33056E-02 0.00055  2.62411E-01 0.00026  5.33206E-02 0.00055  2.64024E-01 0.00030  5.09964E-02 0.00069 ];
DF_HOM_VOL_FLUX           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HOM_SURF_FLUX          (idx, [1:  24]) = [  2.66004E-01 6.9E-05  4.87303E-02 0.00013  2.66004E-01 6.9E-05  4.87303E-02 0.00013  2.66004E-01 6.9E-05  4.87303E-02 0.00013  2.66004E-01 6.9E-05  4.87303E-02 0.00013  2.66004E-01 6.9E-05  4.87303E-02 0.00013  2.66004E-01 6.9E-05  4.87303E-02 0.00013 ];
DF_HOM_CORN_FLUX          (idx, [1:  16]) = [  2.66004E-01 6.9E-05  4.87303E-02 0.00013  2.66004E-01 6.9E-05  4.87303E-02 0.00013  2.66004E-01 6.9E-05  4.87303E-02 0.00013  2.66004E-01 6.9E-05  4.87303E-02 0.00013 ];
DF_SURF_DF                (idx, [1:  24]) = [  9.98179E-01 5.2E-05  1.02234E+00 0.00014  1.00221E+00 5.7E-05  1.01606E+00 0.00013  9.90089E-01 5.2E-05  1.09332E+00 0.00013  1.00226E+00 4.0E-05  1.01615E+00 0.00012  1.00043E+00 0.00016  9.94780E-01 0.00058  1.00036E+00 0.00021  9.94564E-01 0.00056 ];
DF_CORN_DF                (idx, [1:  16]) = [  9.92193E-01 0.00028  1.04594E+00 0.00059  9.86408E-01 0.00026  1.09389E+00 0.00053  9.86491E-01 0.00026  1.09420E+00 0.00053  9.92556E-01 0.00029  1.04650E+00 0.00066 ];
DF_SGN_SURF_IN_CURR       (idx, [1:  24]) = [  3.98743E-05 1.00000 -5.20984E-06 1.00000 -3.70748E-05 1.00000  8.14225E-04 0.03452  2.59637E-05 1.00000  2.94045E-05 1.00000  1.22701E-04 0.42232  8.10981E-04 0.03053  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_OUT_CURR      (idx, [1:  24]) = [  3.98743E-05 1.00000 -5.20984E-06 1.00000 -3.07135E-03 0.01544  2.63977E-03 0.00991  2.50163E-05 1.00000  4.15369E-05 0.64073 -3.00185E-03 0.01647  2.62789E-03 0.00972  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_NET_CURR      (idx, [1:  24]) = [  5.10711E-22 1.00000  1.13517E-22 1.00000  3.03428E-03 0.02241 -1.82554E-03 0.01574  9.47382E-07 1.00000 -1.21324E-05 1.00000  3.12455E-03 0.02317 -1.81691E-03 0.01625  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HET_SURF_FLUX      (idx, [1:  24]) = [ -2.20268E-05 0.82432 -1.12794E-06 1.00000 -3.60019E-04 0.04606  5.32429E-04 0.01637  3.06624E-05 0.61466  1.59894E-05 0.65781 -3.39496E-04 0.05682  5.26050E-04 0.01971  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HOM_SURF_FLUX      (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_DF            (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.32' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov  9 2021 21:59:44' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 10])  = 'PWR W17x17' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:  7])  = 'Serp3x3' ;
WORKING_DIRECTORY         (idx, [1: 59])  = '/home/current/a/rizkiokt/Runs/run_11-28-21_Serpent_3x3_pins' ;
HOSTNAME                  (idx, [1: 24])  = 'current01.ecn.purdue.edu' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Xeon(R) Gold 6152 CPU @ 2.10GHz' ;
CPU_MHZ                   (idx, 1)        = 33581830.0 ;
START_DATE                (idx, [1: 24])  = 'Sun Nov 28 22:04:16 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sun Nov 28 22:52:42 2021' ;

% Run parameters:

POP                       (idx, 1)        = 500000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 100 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1625068908699 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 44 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  44]) = [  1.01418E+00  9.99259E-01  9.98143E-01  1.00266E+00  1.00225E+00  1.00297E+00  1.00030E+00  9.99594E-01  1.00334E+00  9.95421E-01  9.98258E-01  9.89575E-01  9.95444E-01  1.00328E+00  1.00452E+00  9.98562E-01  9.98442E-01  1.00132E+00  1.00292E+00  9.99399E-01  1.00010E+00  9.99775E-01  1.00213E+00  1.00301E+00  9.97437E-01  1.00272E+00  1.00179E+00  9.98333E-01  9.97895E-01  9.97378E-01  9.99808E-01  1.00024E+00  9.99725E-01  1.00134E+00  1.00252E+00  9.99371E-01  9.96081E-01  9.93536E-01  9.99567E-01  9.99376E-01  9.95197E-01  9.98444E-01  1.00198E+00  1.00245E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 57])  = '/home/current/a/rizkiokt/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.2E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.50237E-02 0.00011  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.84976E-01 1.7E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.65133E-01 7.6E-06  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.65672E-01 7.6E-06  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.10555E+00 3.3E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.02954E+00 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.48618E+01 3.4E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 250000344 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.56569E+03 ;
RUNNING_TIME              (idx, 1)        =  4.84210E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.19850E-01  1.19850E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.51666E-03  2.51666E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.82986E+01  4.82986E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.84077E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 32.33489 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.28552E+01 0.00072 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.26979E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 191860.65 ;
ALLOC_MEMSIZE             (idx, 1)        = 4174.28;
MEMSIZE                   (idx, 1)        = 3879.31;
XS_MEMSIZE                (idx, 1)        = 401.30;
MAT_MEMSIZE               (idx, 1)        = 28.70;
RES_MEMSIZE               (idx, 1)        = 110.40;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 3338.90;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 294.97;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 11 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 169724 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 11 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 24 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 24 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 548 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:  9])  = [ 0 0 0 0 0 0 0 0 0 ];
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  1.99710E-06 5.2E-05  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  4.80936E-01 0.00015 ];
U235_FISS                 (idx, [1:   4]) = [  4.50733E-01 7.3E-05  9.39504E-01 2.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  2.90235E-02 0.00038  6.04961E-02 0.00036 ];
U235_CAPT                 (idx, [1:   4]) = [  1.00242E-01 0.00019  1.92647E-01 0.00018 ];
U238_CAPT                 (idx, [1:   4]) = [  2.65000E-01 0.00012  5.09284E-01 8.8E-05 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 250000344 2.50000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 3.86939E+05 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 130067826 1.30274E+08 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 119932518 1.20113E+08 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -2.65241E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.55663E-11 2.7E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  4.05378E-16 2.7E-05 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.17994E+00 2.6E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.79653E-01 2.7E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.20347E-01 2.5E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98551E-01 5.2E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.50908E+01 4.2E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.95057E+01 3.3E-05 ];
INI_FMASS                 (idx, 1)        =  3.83996E-02 ;
TOT_FMASS                 (idx, 1)        =  3.83996E-02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.83062E+00 4.8E-05 ];
SIX_FF_F                  (idx, [1:   2]) = [  7.95599E-01 4.1E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  6.36203E-01 4.7E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.27555E+00 4.8E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45998E+00 1.8E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02558E+02 1.8E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.18189E+00 6.5E-05  1.17383E+00 6.4E-05  8.08075E-03 0.00102 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.18165E+00 6.5E-05 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.73796E+01 2.6E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.73800E+01 1.2E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  5.66479E-07 0.00044 ];
IMP_EALF                  (idx, [1:   2]) = [  5.66232E-07 0.00020 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  2.07321E-01 0.00038 ];
IMP_AFGE                  (idx, [1:   2]) = [  2.07222E-01 0.00017 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.02678E-03 0.00075  1.72744E-04 0.00446  9.55084E-04 0.00185  9.43582E-04 0.00181  2.76593E-03 0.00113  8.92720E-04 0.00195  2.96720E-04 0.00344 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.06595E-01 0.00179  1.24908E-02 2.9E-07  3.16569E-02 2.8E-05  1.10164E-01 3.7E-05  3.20558E-01 2.9E-05  1.34575E+00 2.3E-05  8.88662E+00 0.00019 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.89329E-03 0.00113  1.98220E-04 0.00636  1.09514E-03 0.00258  1.07955E-03 0.00272  3.15951E-03 0.00170  1.02165E-03 0.00288  3.39219E-04 0.00501 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.06165E-01 0.00260  1.24908E-02 4.4E-07  3.16577E-02 4.2E-05  1.10168E-01 5.6E-05  3.20577E-01 4.5E-05  1.34579E+00 3.1E-05  8.88376E+00 0.00030 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.99160E-05 0.00014  1.99052E-05 0.00014  2.14793E-05 0.00147 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.35384E-05 0.00013  2.35257E-05 0.00013  2.53861E-05 0.00146 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.83782E-03 0.00103  1.94925E-04 0.00651  1.08713E-03 0.00266  1.07343E-03 0.00270  3.13198E-03 0.00160  1.01336E-03 0.00289  3.37001E-04 0.00487 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.06794E-01 0.00257  1.24908E-02 4.5E-07  3.16568E-02 4.3E-05  1.10165E-01 5.6E-05  3.20578E-01 4.6E-05  1.34577E+00 3.2E-05  8.88463E+00 0.00029 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.99156E-05 0.00031  1.99043E-05 0.00031  2.15657E-05 0.00342 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.35379E-05 0.00030  2.35246E-05 0.00030  2.54883E-05 0.00341 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.85160E-03 0.00342  2.00895E-04 0.02024  1.10231E-03 0.00832  1.05814E-03 0.00825  3.15176E-03 0.00485  1.00073E-03 0.00884  3.37771E-04 0.01529 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.04077E-01 0.00798  1.24908E-02 1.4E-06  3.16619E-02 0.00012  1.10164E-01 0.00017  3.20565E-01 0.00013  1.34559E+00 9.9E-05  8.87858E+00 0.00082 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.85211E-03 0.00326  2.00562E-04 0.01954  1.09844E-03 0.00797  1.06133E-03 0.00807  3.15310E-03 0.00461  1.00123E-03 0.00866  3.37440E-04 0.01461 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.04272E-01 0.00773  1.24908E-02 1.4E-06  3.16633E-02 0.00012  1.10168E-01 0.00016  3.20569E-01 0.00013  1.34562E+00 9.5E-05  8.88083E+00 0.00081 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -3.44236E+02 0.00342 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.99363E-05 8.8E-05 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.35624E-05 5.6E-05 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.85305E-03 0.00063 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -3.43749E+02 0.00064 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  4.20984E-07 6.8E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.98483E-06 6.0E-05  2.98485E-06 6.0E-05  2.98290E-06 0.00072 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  2.64056E-05 7.8E-05  2.64054E-05 7.9E-05  2.64328E-05 0.00091 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  6.36752E-01 4.7E-05  6.35896E-01 4.7E-05  7.78250E-01 0.00120 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.02639E+01 0.00187 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.95043E+01 3.5E-05  3.22182E+01 4.7E-05 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  3])  = '005' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+01  6.25000E-07  1.00000E-11 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  3.78924E+05 0.00125  1.51924E+06 0.00052  3.14586E+06 0.00033  3.42006E+06 0.00027  3.17073E+06 0.00027  3.45477E+06 0.00021  2.38331E+06 0.00021  2.12704E+06 0.00020  1.65415E+06 0.00023  1.36666E+06 0.00021  1.18929E+06 0.00024  1.07591E+06 0.00022  9.98200E+05 0.00032  9.51717E+05 0.00018  9.29754E+05 0.00021  8.04012E+05 0.00028  7.97035E+05 0.00024  7.89113E+05 0.00032  7.77732E+05 0.00029  1.52054E+06 0.00015  1.47227E+06 0.00017  1.06774E+06 0.00022  6.91219E+05 0.00027  8.08042E+05 0.00023  7.69235E+05 0.00028  6.71741E+05 0.00030  1.15219E+06 0.00023  2.49301E+05 0.00047  3.11612E+05 0.00041  2.81439E+05 0.00042  1.63593E+05 0.00057  2.83729E+05 0.00042  1.92718E+05 0.00057  1.64752E+05 0.00079  3.16133E+04 0.00114  3.14138E+04 0.00125  3.21427E+04 0.00128  3.31069E+04 0.00144  3.27664E+04 0.00079  3.21880E+04 0.00125  3.32837E+04 0.00105  3.12119E+04 0.00128  5.89525E+04 0.00096  9.39381E+04 0.00060  1.19543E+05 0.00057  3.14697E+05 0.00039  3.30170E+05 0.00033  3.53999E+05 0.00047  2.33363E+05 0.00049  1.69581E+05 0.00044  1.28412E+05 0.00065  1.48063E+05 0.00068  2.70554E+05 0.00040  3.49858E+05 0.00033  6.38882E+05 0.00024  9.35948E+05 0.00024  1.34177E+06 0.00021  8.41058E+05 0.00025  5.97422E+05 0.00029  4.27684E+05 0.00031  3.83665E+05 0.00033  3.78279E+05 0.00028  3.16762E+05 0.00026  2.15182E+05 0.00046  1.99776E+05 0.00042  1.79002E+05 0.00049  1.53022E+05 0.00039  1.22380E+05 0.00052  8.38371E+04 0.00069  3.08223E+04 0.00087 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  4.15182E+00 7.7E-05  8.81669E-01 0.00015 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  6.13072E-01 3.5E-05  1.66570E+00 4.5E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.87043E-04 0.00017  2.74209E-02 5.5E-05 ];
INF_ABS                   (idx, [1:   4]) = [  8.87043E-04 0.00017  2.74209E-02 5.5E-05 ];
INF_FISS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_NSF                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_NUBAR                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.11125E-08 0.00011  2.47442E-06 3.6E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  6.12184E-01 3.5E-05  1.63826E+00 4.5E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  3.44619E-01 4.4E-05  4.71270E-01 0.00011 ];
INF_SCATT2                (idx, [1:   4]) = [  1.32425E-01 0.00011  1.16446E-01 0.00031 ];
INF_SCATT3                (idx, [1:   4]) = [  5.07400E-03 0.00217  3.51621E-02 0.00098 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.92784E-02 0.00039 -9.00476E-03 0.00307 ];
INF_SCATT5                (idx, [1:   4]) = [ -1.67961E-03 0.00387  7.13812E-03 0.00368 ];
INF_SCATT6                (idx, [1:   4]) = [  6.63840E-03 0.00102 -1.87961E-02 0.00123 ];
INF_SCATT7                (idx, [1:   4]) = [  7.39829E-04 0.00665 -7.55054E-05 0.29113 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  6.12186E-01 3.5E-05  1.63826E+00 4.5E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.44619E-01 4.4E-05  4.71270E-01 0.00011 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.32425E-01 0.00011  1.16446E-01 0.00031 ];
INF_SCATTP3               (idx, [1:   4]) = [  5.07401E-03 0.00217  3.51621E-02 0.00098 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.92784E-02 0.00039 -9.00476E-03 0.00307 ];
INF_SCATTP5               (idx, [1:   4]) = [ -1.67961E-03 0.00388  7.13812E-03 0.00368 ];
INF_SCATTP6               (idx, [1:   4]) = [  6.63839E-03 0.00102 -1.87961E-02 0.00123 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.39836E-04 0.00665 -7.55054E-05 0.29113 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  1.75914E-01 0.00016  1.02319E+00 6.8E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.89487E+00 0.00016  3.25778E-01 6.8E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  8.85360E-04 0.00017  2.74209E-02 5.5E-05 ];
INF_REMXS                 (idx, [1:   4]) = [  2.73143E-02 0.00016  2.90714E-02 0.00031 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
PM149_LAMBDA              (idx, 1)        =  0.00000E+00 ;
I135_LAMBDA               (idx, 1)        =  0.00000E+00 ;
XE135_LAMBDA              (idx, 1)        =  0.00000E+00 ;
XE135M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
I135_BR                   (idx, 1)        =  0.00000E+00 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  5.85758E-01 3.5E-05  2.64268E-02 0.00015  1.62797E-03 0.00163  1.63663E+00 4.5E-05 ];
INF_S1                    (idx, [1:   8]) = [  3.36737E-01 4.4E-05  7.88151E-03 0.00022  9.65115E-04 0.00195  4.70305E-01 0.00011 ];
INF_S2                    (idx, [1:   8]) = [  1.34768E-01 0.00010 -2.34279E-03 0.00084  5.25451E-04 0.00245  1.15921E-01 0.00031 ];
INF_S3                    (idx, [1:   8]) = [  7.83254E-03 0.00135 -2.75854E-03 0.00066  1.89393E-04 0.00602  3.49727E-02 0.00099 ];
INF_S4                    (idx, [1:   8]) = [ -1.83784E-02 0.00040 -8.99958E-04 0.00122  6.55569E-06 0.14945 -9.01132E-03 0.00306 ];
INF_S5                    (idx, [1:   8]) = [ -1.71610E-03 0.00379  3.64852E-05 0.03398 -6.82630E-05 0.01496  7.20639E-03 0.00360 ];
INF_S6                    (idx, [1:   8]) = [  6.85017E-03 0.00098 -2.11774E-04 0.00666 -8.96972E-05 0.01105 -1.87064E-02 0.00124 ];
INF_S7                    (idx, [1:   8]) = [  9.94345E-04 0.00500 -2.54516E-04 0.00408 -8.23346E-05 0.00893  6.82928E-06 1.00000 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  5.85759E-01 3.5E-05  2.64268E-02 0.00015  1.62797E-03 0.00163  1.63663E+00 4.5E-05 ];
INF_SP1                   (idx, [1:   8]) = [  3.36737E-01 4.4E-05  7.88151E-03 0.00022  9.65115E-04 0.00195  4.70305E-01 0.00011 ];
INF_SP2                   (idx, [1:   8]) = [  1.34768E-01 0.00010 -2.34279E-03 0.00084  5.25451E-04 0.00245  1.15921E-01 0.00031 ];
INF_SP3                   (idx, [1:   8]) = [  7.83255E-03 0.00135 -2.75854E-03 0.00066  1.89393E-04 0.00602  3.49727E-02 0.00099 ];
INF_SP4                   (idx, [1:   8]) = [ -1.83785E-02 0.00040 -8.99958E-04 0.00122  6.55569E-06 0.14945 -9.01132E-03 0.00306 ];
INF_SP5                   (idx, [1:   8]) = [ -1.71609E-03 0.00379  3.64852E-05 0.03398 -6.82630E-05 0.01496  7.20639E-03 0.00360 ];
INF_SP6                   (idx, [1:   8]) = [  6.85016E-03 0.00098 -2.11774E-04 0.00666 -8.96972E-05 0.01105 -1.87064E-02 0.00124 ];
INF_SP7                   (idx, [1:   8]) = [  9.94352E-04 0.00500 -2.54516E-04 0.00408 -8.23346E-05 0.00893  6.82928E-06 1.00000 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  4.42639E-02 0.00012  1.75692E-01 0.00039 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  4.42807E-02 0.00017  1.75304E-01 0.00055 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  4.42798E-02 0.00016  1.75345E-01 0.00062 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  4.42314E-02 0.00018  1.76435E-01 0.00063 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  7.53059E+00 0.00012  1.89726E+00 0.00039 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  7.52774E+00 0.00017  1.90147E+00 0.00055 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  7.52789E+00 0.00016  1.90104E+00 0.00062 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  7.53613E+00 0.00018  1.88929E+00 0.00063 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
LAMBDA                    (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Assembly discontinuity factors (order: W-S-E-N / NW-NE-SE-SW):

DF_SURFACE                (idx, [1:  3])  = '005' ;
DF_SURFACE_TYPE           (idx, 1)        = 15 ;
DF_SYM                    (idx, 1)        = 0 ;
DF_N_SURF                 (idx, 1)        = 6 ;
DF_N_CORN                 (idx, 1)        = 4 ;
DF_VOLUME                 (idx, 1)        =  1.59264E+01 ;
DF_SURF_AREA              (idx, [1:  6])  = [ 1.26200E+01  1.26200E+01  1.26200E+01  1.26200E+01  1.59264E+00  1.59264E+00 ];
DF_MID_AREA               (idx, [1:  6])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_CORN_AREA              (idx, [1:  4])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_SURF_IN_CURR           (idx, [1:  24]) = [  8.44937E-01 6.5E-05  1.57583E-01 0.00019  8.44940E-01 9.8E-05  1.57637E-01 0.00017  8.44921E-01 7.1E-05  1.57646E-01 0.00018  8.44934E-01 8.4E-05  1.57697E-01 0.00017  1.03241E-01 0.00024  2.22682E-02 0.00048  1.03205E-01 0.00021  2.22566E-02 0.00059 ];
DF_SURF_OUT_CURR          (idx, [1:  24]) = [  8.16916E-01 9.0E-05  1.78600E-01 0.00017  8.16956E-01 8.4E-05  1.78677E-01 0.00019  8.16968E-01 7.5E-05  1.78689E-01 0.00015  8.16930E-01 8.0E-05  1.78684E-01 0.00018  1.03241E-01 0.00024  2.22682E-02 0.00048  1.03205E-01 0.00021  2.22565E-02 0.00059 ];
DF_SURF_NET_CURR          (idx, [1:  24]) = [  2.80213E-02 0.00191 -2.10168E-02 0.00134  2.79831E-02 0.00245 -2.10402E-02 0.00116  2.79533E-02 0.00222 -2.10433E-02 0.00100  2.80034E-02 0.00263 -2.09875E-02 0.00126  7.56725E-08 1.00000 -5.58805E-08 0.60229  1.31516E-07 0.43354  5.99121E-08 0.70649 ];
DF_MID_IN_CURR            (idx, [1:  24]) = [  8.51114E-02 0.00019  1.53216E-02 0.00058  8.51421E-02 0.00024  1.53272E-02 0.00062  8.51568E-02 0.00021  1.53162E-02 0.00059  8.50984E-02 0.00020  1.53382E-02 0.00058  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_OUT_CURR           (idx, [1:  24]) = [  8.14382E-02 0.00026  1.80688E-02 0.00045  8.14477E-02 0.00021  1.80793E-02 0.00057  8.14626E-02 0.00023  1.80824E-02 0.00042  8.14741E-02 0.00021  1.80655E-02 0.00046  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_NET_CURR           (idx, [1:  24]) = [  3.67312E-03 0.00626 -2.74718E-03 0.00371  3.69445E-03 0.00673 -2.75209E-03 0.00477  3.69417E-03 0.00682 -2.76620E-03 0.00406  3.62430E-03 0.00724 -2.72728E-03 0.00447  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_CORN_IN_CURR           (idx, [1:  16]) = [  8.38762E-02 0.00019  1.61049E-02 0.00044  8.38888E-02 0.00020  1.61183E-02 0.00043  8.38793E-02 0.00029  1.61152E-02 0.00047  8.38937E-02 0.00022  1.61024E-02 0.00053 ];
DF_CORN_OUT_CURR          (idx, [1:  16]) = [  8.21503E-02 0.00024  1.74004E-02 0.00046  8.21205E-02 0.00022  1.74140E-02 0.00059  8.21277E-02 0.00026  1.74038E-02 0.00050  8.21614E-02 0.00022  1.74052E-02 0.00043 ];
DF_CORN_NET_CURR          (idx, [1:  16]) = [  1.72590E-03 0.01262 -1.29551E-03 0.00824  1.76837E-03 0.01091 -1.29564E-03 0.00834  1.75162E-03 0.01450 -1.28857E-03 0.00552  1.73227E-03 0.01378 -1.30285E-03 0.00763 ];
DF_HET_VOL_FLUX           (idx, [1:   4]) = [  2.60666E-01 6.3E-05  5.53573E-02 0.00013 ];
DF_HET_SURF_FLUX          (idx, [1:  24]) = [  2.63368E-01 7.1E-05  5.32777E-02 0.00016  2.63375E-01 8.2E-05  5.32985E-02 0.00017  2.63374E-01 6.3E-05  5.33018E-02 0.00015  2.63370E-01 6.9E-05  5.33091E-02 0.00016  2.59293E-01 0.00024  5.59276E-02 0.00048  2.59205E-01 0.00021  5.58984E-02 0.00059 ];
DF_HET_CORN_FLUX          (idx, [1:  16]) = [  2.62356E-01 0.00024  5.34654E-02 0.00054  2.62258E-01 0.00024  5.35427E-02 0.00056  2.62343E-01 0.00026  5.34808E-02 0.00052  2.62374E-01 0.00028  5.34455E-02 0.00061 ];
DF_HOM_VOL_FLUX           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HOM_SURF_FLUX          (idx, [1:  24]) = [  2.60666E-01 6.3E-05  5.53573E-02 0.00013  2.60666E-01 6.3E-05  5.53573E-02 0.00013  2.60666E-01 6.3E-05  5.53573E-02 0.00013  2.60666E-01 6.3E-05  5.53573E-02 0.00013  2.60666E-01 6.3E-05  5.53573E-02 0.00013  2.60666E-01 6.3E-05  5.53573E-02 0.00013 ];
DF_HOM_CORN_FLUX          (idx, [1:  16]) = [  2.60666E-01 6.3E-05  5.53573E-02 0.00013  2.60666E-01 6.3E-05  5.53573E-02 0.00013  2.60666E-01 6.3E-05  5.53573E-02 0.00013  2.60666E-01 6.3E-05  5.53573E-02 0.00013 ];
DF_SURF_DF                (idx, [1:  24]) = [  1.01037E+00 5.2E-05  9.62433E-01 0.00011  1.01039E+00 4.1E-05  9.62810E-01 0.00013  1.01039E+00 4.4E-05  9.62869E-01 0.00013  1.01037E+00 4.6E-05  9.63001E-01 0.00013  9.94735E-01 0.00022  1.01030E+00 0.00040  9.94396E-01 0.00019  1.00978E+00 0.00056 ];
DF_CORN_DF                (idx, [1:  16]) = [  1.00648E+00 0.00025  9.65824E-01 0.00055  1.00611E+00 0.00026  9.67221E-01 0.00058  1.00643E+00 0.00025  9.66102E-01 0.00057  1.00655E+00 0.00028  9.65464E-01 0.00060 ];
DF_SGN_SURF_IN_CURR       (idx, [1:  24]) = [  2.50163E-05 1.00000  4.15369E-05 0.64073 -2.95737E-06 1.00000  1.02741E-05 1.00000  1.42056E-05 1.00000 -3.96982E-05 0.46727  4.83468E-05 1.00000  1.29023E-05 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_OUT_CURR      (idx, [1:  24]) = [  2.59637E-05 1.00000  2.94045E-05 1.00000 -1.58983E-04 0.33077 -1.85902E-06 1.00000 -1.32117E-04 0.40455  2.54138E-05 1.00000 -1.79640E-05 1.00000 -3.51437E-05 0.74537  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_NET_CURR      (idx, [1:  24]) = [ -9.47382E-07 1.00000  1.21324E-05 1.00000  1.56026E-04 0.51740  1.21331E-05 1.00000  1.46322E-04 0.46710 -6.51120E-05 0.51735  6.63108E-05 1.00000  4.80459E-05 0.66911  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HET_SURF_FLUX      (idx, [1:  24]) = [  3.06624E-05 0.61466  1.59894E-05 0.65781 -2.07869E-05 1.00000 -1.61455E-06 1.00000 -1.95022E-05 1.00000  6.39461E-06 1.00000  5.19695E-06 1.00000  5.61424E-06 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HOM_SURF_FLUX      (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_DF            (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.32' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov  9 2021 21:59:44' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 10])  = 'PWR W17x17' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:  7])  = 'Serp3x3' ;
WORKING_DIRECTORY         (idx, [1: 59])  = '/home/current/a/rizkiokt/Runs/run_11-28-21_Serpent_3x3_pins' ;
HOSTNAME                  (idx, [1: 24])  = 'current01.ecn.purdue.edu' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Xeon(R) Gold 6152 CPU @ 2.10GHz' ;
CPU_MHZ                   (idx, 1)        = 33581830.0 ;
START_DATE                (idx, [1: 24])  = 'Sun Nov 28 22:04:16 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sun Nov 28 22:52:42 2021' ;

% Run parameters:

POP                       (idx, 1)        = 500000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 100 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1625068908699 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 44 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  44]) = [  1.01418E+00  9.99259E-01  9.98143E-01  1.00266E+00  1.00225E+00  1.00297E+00  1.00030E+00  9.99594E-01  1.00334E+00  9.95421E-01  9.98258E-01  9.89575E-01  9.95444E-01  1.00328E+00  1.00452E+00  9.98562E-01  9.98442E-01  1.00132E+00  1.00292E+00  9.99399E-01  1.00010E+00  9.99775E-01  1.00213E+00  1.00301E+00  9.97437E-01  1.00272E+00  1.00179E+00  9.98333E-01  9.97895E-01  9.97378E-01  9.99808E-01  1.00024E+00  9.99725E-01  1.00134E+00  1.00252E+00  9.99371E-01  9.96081E-01  9.93536E-01  9.99567E-01  9.99376E-01  9.95197E-01  9.98444E-01  1.00198E+00  1.00245E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 57])  = '/home/current/a/rizkiokt/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.2E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.50237E-02 0.00011  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.84976E-01 1.7E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.65133E-01 7.6E-06  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.65672E-01 7.6E-06  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.10555E+00 3.3E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.02954E+00 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.48618E+01 3.4E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 250000344 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.56569E+03 ;
RUNNING_TIME              (idx, 1)        =  4.84210E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.19850E-01  1.19850E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.51666E-03  2.51666E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.82986E+01  4.82986E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.84077E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 32.33490 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.28552E+01 0.00072 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.26979E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 191860.65 ;
ALLOC_MEMSIZE             (idx, 1)        = 4174.28;
MEMSIZE                   (idx, 1)        = 3879.31;
XS_MEMSIZE                (idx, 1)        = 401.30;
MAT_MEMSIZE               (idx, 1)        = 28.70;
RES_MEMSIZE               (idx, 1)        = 110.40;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 3338.90;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 294.97;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 11 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 169724 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 11 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 24 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 24 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 548 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:  9])  = [ 0 0 0 0 0 0 0 0 0 ];
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  1.99710E-06 5.2E-05  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  4.80936E-01 0.00015 ];
U235_FISS                 (idx, [1:   4]) = [  4.50733E-01 7.3E-05  9.39504E-01 2.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  2.90235E-02 0.00038  6.04961E-02 0.00036 ];
U235_CAPT                 (idx, [1:   4]) = [  1.00242E-01 0.00019  1.92647E-01 0.00018 ];
U238_CAPT                 (idx, [1:   4]) = [  2.65000E-01 0.00012  5.09284E-01 8.8E-05 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 250000344 2.50000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 3.86939E+05 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 130067826 1.30274E+08 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 119932518 1.20113E+08 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -2.65241E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.55663E-11 2.7E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  4.05378E-16 2.7E-05 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.17994E+00 2.6E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.79653E-01 2.7E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.20347E-01 2.5E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98551E-01 5.2E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.50908E+01 4.2E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.95057E+01 3.3E-05 ];
INI_FMASS                 (idx, 1)        =  3.83996E-02 ;
TOT_FMASS                 (idx, 1)        =  3.83996E-02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.83062E+00 4.8E-05 ];
SIX_FF_F                  (idx, [1:   2]) = [  7.95599E-01 4.1E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  6.36203E-01 4.7E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.27555E+00 4.8E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45998E+00 1.8E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02558E+02 1.8E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.18189E+00 6.5E-05  1.17383E+00 6.4E-05  8.08075E-03 0.00102 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.18165E+00 6.5E-05 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.73796E+01 2.6E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.73800E+01 1.2E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  5.66479E-07 0.00044 ];
IMP_EALF                  (idx, [1:   2]) = [  5.66232E-07 0.00020 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  2.07321E-01 0.00038 ];
IMP_AFGE                  (idx, [1:   2]) = [  2.07222E-01 0.00017 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.02678E-03 0.00075  1.72744E-04 0.00446  9.55084E-04 0.00185  9.43582E-04 0.00181  2.76593E-03 0.00113  8.92720E-04 0.00195  2.96720E-04 0.00344 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.06595E-01 0.00179  1.24908E-02 2.9E-07  3.16569E-02 2.8E-05  1.10164E-01 3.7E-05  3.20558E-01 2.9E-05  1.34575E+00 2.3E-05  8.88662E+00 0.00019 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.89329E-03 0.00113  1.98220E-04 0.00636  1.09514E-03 0.00258  1.07955E-03 0.00272  3.15951E-03 0.00170  1.02165E-03 0.00288  3.39219E-04 0.00501 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.06165E-01 0.00260  1.24908E-02 4.4E-07  3.16577E-02 4.2E-05  1.10168E-01 5.6E-05  3.20577E-01 4.5E-05  1.34579E+00 3.1E-05  8.88376E+00 0.00030 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.99160E-05 0.00014  1.99052E-05 0.00014  2.14793E-05 0.00147 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.35384E-05 0.00013  2.35257E-05 0.00013  2.53861E-05 0.00146 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.83782E-03 0.00103  1.94925E-04 0.00651  1.08713E-03 0.00266  1.07343E-03 0.00270  3.13198E-03 0.00160  1.01336E-03 0.00289  3.37001E-04 0.00487 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.06794E-01 0.00257  1.24908E-02 4.5E-07  3.16568E-02 4.3E-05  1.10165E-01 5.6E-05  3.20578E-01 4.6E-05  1.34577E+00 3.2E-05  8.88463E+00 0.00029 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.99156E-05 0.00031  1.99043E-05 0.00031  2.15657E-05 0.00342 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.35379E-05 0.00030  2.35246E-05 0.00030  2.54883E-05 0.00341 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.85160E-03 0.00342  2.00895E-04 0.02024  1.10231E-03 0.00832  1.05814E-03 0.00825  3.15176E-03 0.00485  1.00073E-03 0.00884  3.37771E-04 0.01529 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.04077E-01 0.00798  1.24908E-02 1.4E-06  3.16619E-02 0.00012  1.10164E-01 0.00017  3.20565E-01 0.00013  1.34559E+00 9.9E-05  8.87858E+00 0.00082 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.85211E-03 0.00326  2.00562E-04 0.01954  1.09844E-03 0.00797  1.06133E-03 0.00807  3.15310E-03 0.00461  1.00123E-03 0.00866  3.37440E-04 0.01461 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.04272E-01 0.00773  1.24908E-02 1.4E-06  3.16633E-02 0.00012  1.10168E-01 0.00016  3.20569E-01 0.00013  1.34562E+00 9.5E-05  8.88083E+00 0.00081 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -3.44236E+02 0.00342 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.99363E-05 8.8E-05 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.35624E-05 5.6E-05 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.85305E-03 0.00063 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -3.43749E+02 0.00064 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  4.20984E-07 6.8E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.98483E-06 6.0E-05  2.98485E-06 6.0E-05  2.98290E-06 0.00072 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  2.64056E-05 7.8E-05  2.64054E-05 7.9E-05  2.64328E-05 0.00091 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  6.36752E-01 4.7E-05  6.35896E-01 4.7E-05  7.78250E-01 0.00120 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.02639E+01 0.00187 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.95043E+01 3.5E-05  3.22182E+01 4.7E-05 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  3])  = '006' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+01  6.25000E-07  1.00000E-11 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  3.97925E+05 0.00084  1.60595E+06 0.00059  3.33820E+06 0.00026  3.64031E+06 0.00028  3.38592E+06 0.00022  3.68862E+06 0.00020  2.51128E+06 0.00026  2.23277E+06 0.00023  1.70810E+06 0.00019  1.39230E+06 0.00030  1.20034E+06 0.00031  1.08257E+06 0.00029  9.98695E+05 0.00028  9.49207E+05 0.00024  9.23838E+05 0.00032  7.97405E+05 0.00032  7.87018E+05 0.00039  7.79581E+05 0.00033  7.65116E+05 0.00030  1.49132E+06 0.00031  1.43214E+06 0.00028  1.02851E+06 0.00034  6.64109E+05 0.00034  7.61014E+05 0.00044  7.14126E+05 0.00034  6.52224E+05 0.00046  1.05848E+06 0.00029  2.43584E+05 0.00060  3.05346E+05 0.00055  2.77724E+05 0.00080  1.60743E+05 0.00090  2.79733E+05 0.00059  1.89899E+05 0.00092  1.60808E+05 0.00074  3.04302E+04 0.00164  3.02940E+04 0.00182  3.11162E+04 0.00175  3.20593E+04 0.00185  3.18137E+04 0.00157  3.11944E+04 0.00167  3.24132E+04 0.00098  3.04076E+04 0.00162  5.74563E+04 0.00133  9.15632E+04 0.00085  1.16850E+05 0.00081  3.07285E+05 0.00048  3.20628E+05 0.00055  3.41577E+05 0.00054  2.22214E+05 0.00037  1.59724E+05 0.00072  1.20481E+05 0.00076  1.38153E+05 0.00067  2.51432E+05 0.00068  3.23967E+05 0.00040  5.89078E+05 0.00038  8.52865E+05 0.00038  1.19909E+06 0.00022  7.35556E+05 0.00030  5.14294E+05 0.00032  3.62900E+05 0.00034  3.21566E+05 0.00042  3.12529E+05 0.00042  2.57240E+05 0.00052  1.71787E+05 0.00058  1.57122E+05 0.00057  1.37980E+05 0.00044  1.15188E+05 0.00056  8.92451E+04 0.00070  5.84241E+04 0.00078  1.99957E+04 0.00154 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.21645E+00 0.00015 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  4.23663E+00 6.7E-05  7.76177E-01 0.00013 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  5.23296E-01 4.0E-05  1.26671E+00 6.6E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.75794E-03 0.00025  3.78355E-02 7.9E-05 ];
INF_ABS                   (idx, [1:   4]) = [  1.07139E-02 0.00020  9.99642E-02 0.00012 ];
INF_FISS                  (idx, [1:   4]) = [  2.95595E-03 0.00018  6.21287E-02 0.00014 ];
INF_NSF                   (idx, [1:   4]) = [  7.53209E-03 0.00018  1.51389E-01 0.00014 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.54811E+00 1.6E-05  2.43670E+00 3.8E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03645E+02 1.4E-06  2.02270E+02 3.8E-09 ];
INF_INVV                  (idx, [1:   4]) = [  5.79004E-08 0.00013  2.38545E-06 6.2E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  5.12579E-01 4.1E-05  1.16671E+00 7.5E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.23617E-01 6.5E-05  3.04117E-01 0.00018 ];
INF_SCATT2                (idx, [1:   4]) = [  8.83798E-02 0.00011  7.55909E-02 0.00048 ];
INF_SCATT3                (idx, [1:   4]) = [  7.53213E-03 0.00126  2.29167E-02 0.00115 ];
INF_SCATT4                (idx, [1:   4]) = [ -8.66750E-03 0.00100 -5.44559E-03 0.00522 ];
INF_SCATT5                (idx, [1:   4]) = [  4.95271E-04 0.01622  4.43119E-03 0.00422 ];
INF_SCATT6                (idx, [1:   4]) = [  4.75112E-03 0.00126 -1.16469E-02 0.00248 ];
INF_SCATT7                (idx, [1:   4]) = [  7.28738E-04 0.00859 -1.91108E-04 0.09957 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  5.12624E-01 4.1E-05  1.16671E+00 7.5E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.23618E-01 6.5E-05  3.04117E-01 0.00018 ];
INF_SCATTP2               (idx, [1:   4]) = [  8.83801E-02 0.00011  7.55909E-02 0.00048 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.53220E-03 0.00126  2.29167E-02 0.00115 ];
INF_SCATTP4               (idx, [1:   4]) = [ -8.66759E-03 0.00100 -5.44559E-03 0.00522 ];
INF_SCATTP5               (idx, [1:   4]) = [  4.95278E-04 0.01622  4.43119E-03 0.00422 ];
INF_SCATTP6               (idx, [1:   4]) = [  4.75105E-03 0.00125 -1.16469E-02 0.00248 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.28699E-04 0.00857 -1.91108E-04 0.09957 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.22279E-01 9.6E-05  8.51186E-01 8.5E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.49962E+00 9.6E-05  3.91611E-01 8.5E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.06685E-02 0.00020  9.99642E-02 0.00012 ];
INF_REMXS                 (idx, [1:   4]) = [  2.66137E-02 0.00019  1.01672E-01 0.00014 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
PM149_LAMBDA              (idx, 1)        =  0.00000E+00 ;
I135_LAMBDA               (idx, 1)        =  0.00000E+00 ;
XE135_LAMBDA              (idx, 1)        =  0.00000E+00 ;
XE135M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
I135_BR                   (idx, 1)        =  0.00000E+00 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  4.96682E-01 3.8E-05  1.58968E-02 0.00028  1.67227E-03 0.00188  1.16504E+00 7.7E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.19024E-01 6.5E-05  4.59247E-03 0.00041  6.09370E-04 0.00298  3.03508E-01 0.00018 ];
INF_S2                    (idx, [1:   8]) = [  8.97604E-02 0.00011 -1.38060E-03 0.00137  3.36966E-04 0.00349  7.52540E-02 0.00048 ];
INF_S3                    (idx, [1:   8]) = [  9.15918E-03 0.00106 -1.62705E-03 0.00084  1.22082E-04 0.00894  2.27946E-02 0.00115 ];
INF_S4                    (idx, [1:   8]) = [ -8.13066E-03 0.00108 -5.36835E-04 0.00165  1.49820E-06 0.82098 -5.44709E-03 0.00514 ];
INF_S5                    (idx, [1:   8]) = [  4.79332E-04 0.01692  1.59390E-05 0.05714 -5.00972E-05 0.02135  4.48128E-03 0.00413 ];
INF_S6                    (idx, [1:   8]) = [  4.87736E-03 0.00123 -1.26243E-04 0.00849 -6.40180E-05 0.01555 -1.15829E-02 0.00246 ];
INF_S7                    (idx, [1:   8]) = [  8.78806E-04 0.00706 -1.50068E-04 0.00566 -5.72360E-05 0.01376 -1.33872E-04 0.14215 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  4.96727E-01 3.8E-05  1.58968E-02 0.00028  1.67227E-03 0.00188  1.16504E+00 7.7E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.19025E-01 6.5E-05  4.59247E-03 0.00041  6.09370E-04 0.00298  3.03508E-01 0.00018 ];
INF_SP2                   (idx, [1:   8]) = [  8.97607E-02 0.00011 -1.38060E-03 0.00137  3.36966E-04 0.00349  7.52540E-02 0.00048 ];
INF_SP3                   (idx, [1:   8]) = [  9.15924E-03 0.00107 -1.62705E-03 0.00084  1.22082E-04 0.00894  2.27946E-02 0.00115 ];
INF_SP4                   (idx, [1:   8]) = [ -8.13075E-03 0.00108 -5.36835E-04 0.00165  1.49820E-06 0.82098 -5.44709E-03 0.00514 ];
INF_SP5                   (idx, [1:   8]) = [  4.79339E-04 0.01692  1.59390E-05 0.05714 -5.00972E-05 0.02135  4.48128E-03 0.00413 ];
INF_SP6                   (idx, [1:   8]) = [  4.87730E-03 0.00123 -1.26243E-04 0.00849 -6.40180E-05 0.01555 -1.15829E-02 0.00246 ];
INF_SP7                   (idx, [1:   8]) = [  8.78767E-04 0.00705 -1.50068E-04 0.00566 -5.72360E-05 0.01376 -1.33872E-04 0.14215 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  3.79344E-02 9.7E-05  1.29642E-01 0.00035 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  3.79429E-02 0.00015  1.29619E-01 0.00055 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  3.79507E-02 0.00012  1.29319E-01 0.00059 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  3.79096E-02 0.00015  1.29991E-01 0.00054 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  8.78711E+00 9.7E-05  2.57119E+00 0.00035 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  8.78513E+00 0.00015  2.57165E+00 0.00055 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  8.78333E+00 0.00012  2.57762E+00 0.00059 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  8.79286E+00 0.00015  2.56430E+00 0.00054 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.88618E-03 0.00223  1.98822E-04 0.01285  1.10280E-03 0.00531  1.08444E-03 0.00554  3.14235E-03 0.00345  1.01799E-03 0.00568  3.39772E-04 0.00974 ];
LAMBDA                    (idx, [1:  14]) = [  8.06878E-01 0.00507  1.24907E-02 8.0E-07  3.16630E-02 8.8E-05  1.10156E-01 0.00011  3.20602E-01 9.3E-05  1.34580E+00 6.1E-05  8.88961E+00 0.00061 ];

% Assembly discontinuity factors (order: W-S-E-N / NW-NE-SE-SW):

DF_SURFACE                (idx, [1:  3])  = '006' ;
DF_SURFACE_TYPE           (idx, 1)        = 15 ;
DF_SYM                    (idx, 1)        = 0 ;
DF_N_SURF                 (idx, 1)        = 6 ;
DF_N_CORN                 (idx, 1)        = 4 ;
DF_VOLUME                 (idx, 1)        =  1.59264E+01 ;
DF_SURF_AREA              (idx, [1:  6])  = [ 1.26200E+01  1.26200E+01  1.26200E+01  1.26200E+01  1.59264E+00  1.59264E+00 ];
DF_MID_AREA               (idx, [1:  6])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_CORN_AREA              (idx, [1:  4])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_SURF_IN_CURR           (idx, [1:  24]) = [  8.16968E-01 7.5E-05  1.78689E-01 0.00015  8.44254E-01 8.4E-05  1.53836E-01 0.00013  8.37756E-01 6.8E-05  1.57206E-01 0.00016  8.44278E-01 9.3E-05  1.53838E-01 0.00021  1.05973E-01 0.00021  1.92943E-02 0.00053  1.05948E-01 0.00021  1.93015E-02 0.00053 ];
DF_SURF_OUT_CURR          (idx, [1:  24]) = [  8.44921E-01 7.1E-05  1.57646E-01 0.00018  8.37889E-01 9.8E-05  1.58591E-01 0.00014  8.37756E-01 6.8E-05  1.57206E-01 0.00016  8.37895E-01 6.9E-05  1.58561E-01 0.00019  1.05974E-01 0.00021  1.92943E-02 0.00053  1.05948E-01 0.00021  1.93015E-02 0.00053 ];
DF_SURF_NET_CURR          (idx, [1:  24]) = [ -2.79533E-02 0.00222  2.10433E-02 0.00100  6.36541E-03 0.01043 -4.75474E-03 0.00383  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  6.38272E-03 0.00869 -4.72232E-03 0.00512 -7.74210E-09 1.00000  3.59977E-08 0.82977  6.78990E-08 0.82637  1.59546E-08 1.00000 ];
DF_MID_IN_CURR            (idx, [1:  24]) = [  8.14626E-02 0.00023  1.80824E-02 0.00042  8.50138E-02 0.00017  1.48560E-02 0.00053  8.43776E-02 0.00025  1.53297E-02 0.00054  8.50259E-02 0.00019  1.48473E-02 0.00044  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_OUT_CURR           (idx, [1:  24]) = [  8.51568E-02 0.00021  1.53162E-02 0.00059  8.45464E-02 0.00019  1.51875E-02 0.00042  8.43776E-02 0.00025  1.53297E-02 0.00054  8.45592E-02 0.00021  1.51808E-02 0.00044  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_NET_CURR           (idx, [1:  24]) = [ -3.69417E-03 0.00682  2.76620E-03 0.00406  4.67418E-04 0.03892 -3.31435E-04 0.03108  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.66672E-04 0.06087 -3.33455E-04 0.02975  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_CORN_IN_CURR           (idx, [1:  16]) = [  8.29999E-02 0.00021  1.67472E-02 0.00050  8.35715E-02 0.00027  1.58954E-02 0.00063  8.35757E-02 0.00020  1.58863E-02 0.00059  8.30135E-02 0.00021  1.67330E-02 0.00055 ];
DF_CORN_OUT_CURR          (idx, [1:  16]) = [  8.31252E-02 0.00023  1.66659E-02 0.00054  8.34193E-02 0.00024  1.60279E-02 0.00053  8.34544E-02 0.00029  1.60166E-02 0.00063  8.30778E-02 0.00022  1.66690E-02 0.00057 ];
DF_CORN_NET_CURR          (idx, [1:  16]) = [ -1.25286E-04 0.17858  8.13746E-05 0.14745  1.52242E-04 0.12533 -1.32470E-04 0.06321  1.21338E-04 0.13208 -1.30332E-04 0.05205 -6.42658E-05 0.30881  6.39190E-05 0.12652 ];
DF_HET_VOL_FLUX           (idx, [1:   4]) = [  2.66009E-01 6.1E-05  4.87373E-02 9.3E-05 ];
DF_HET_SURF_FLUX          (idx, [1:  24]) = [  2.63374E-01 6.3E-05  5.33018E-02 0.00015  2.66584E-01 8.2E-05  4.95131E-02 0.00013  2.65533E-01 6.8E-05  4.98276E-02 0.00016  2.66588E-01 7.5E-05  4.95085E-02 0.00018  2.66157E-01 0.00021  4.84585E-02 0.00053  2.66092E-01 0.00021  4.84766E-02 0.00053 ];
DF_HET_CORN_FLUX          (idx, [1:  16]) = [  2.62394E-01 0.00026  5.33499E-02 0.00054  2.63939E-01 0.00031  5.09874E-02 0.00077  2.64021E-01 0.00033  5.09907E-02 0.00083  2.62352E-01 0.00025  5.33507E-02 0.00059 ];
DF_HOM_VOL_FLUX           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HOM_SURF_FLUX          (idx, [1:  24]) = [  2.66009E-01 6.1E-05  4.87373E-02 9.3E-05  2.66009E-01 6.1E-05  4.87373E-02 9.3E-05  2.66009E-01 6.1E-05  4.87373E-02 9.3E-05  2.66009E-01 6.1E-05  4.87373E-02 9.3E-05  2.66009E-01 6.1E-05  4.87373E-02 9.3E-05  2.66009E-01 6.1E-05  4.87373E-02 9.3E-05 ];
DF_HOM_CORN_FLUX          (idx, [1:  16]) = [  2.66009E-01 6.1E-05  4.87373E-02 9.3E-05  2.66009E-01 6.1E-05  4.87373E-02 9.3E-05  2.66009E-01 6.1E-05  4.87373E-02 9.3E-05  2.66009E-01 6.1E-05  4.87373E-02 9.3E-05 ];
DF_SURF_DF                (idx, [1:  24]) = [  9.90093E-01 5.4E-05  1.09366E+00 0.00013  1.00216E+00 4.5E-05  1.01592E+00 0.00011  9.98209E-01 5.9E-05  1.02237E+00 0.00012  1.00218E+00 4.9E-05  1.01582E+00 0.00014  1.00056E+00 0.00018  9.94281E-01 0.00052  1.00031E+00 0.00022  9.94651E-01 0.00054 ];
DF_CORN_DF                (idx, [1:  16]) = [  9.86408E-01 0.00026  1.09464E+00 0.00057  9.92218E-01 0.00031  1.04617E+00 0.00075  9.92524E-01 0.00031  1.04624E+00 0.00083  9.86252E-01 0.00023  1.09466E+00 0.00059 ];
DF_SGN_SURF_IN_CURR       (idx, [1:  24]) = [ -1.32117E-04 0.40455  2.54138E-05 1.00000  1.20399E-04 0.51624 -8.12649E-04 0.02106 -1.09417E-05 1.00000  2.90766E-06 1.00000 -1.03248E-05 1.00000 -8.22550E-04 0.02713  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_OUT_CURR      (idx, [1:  24]) = [  1.42056E-05 1.00000 -3.96982E-05 0.46727  3.16620E-03 0.01729 -2.66204E-03 0.00818 -1.09417E-05 1.00000  2.90766E-06 1.00000  3.03897E-03 0.02106 -2.61440E-03 0.00824  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_NET_CURR      (idx, [1:  24]) = [ -1.46322E-04 0.46710  6.51120E-05 0.51735 -3.04580E-03 0.02587  1.84939E-03 0.01571  1.58907E-21 0.63616  0.00000E+00 0.0E+00 -3.04930E-03 0.02954  1.79185E-03 0.01633  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HET_SURF_FLUX      (idx, [1:  24]) = [ -1.95022E-05 1.00000  6.39461E-06 1.00000  4.01463E-04 0.05118 -5.32220E-04 0.01542 -1.26076E-05 1.00000 -4.58587E-06 1.00000  3.43911E-04 0.05161 -5.31320E-04 0.01350  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HOM_SURF_FLUX      (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_DF            (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.32' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov  9 2021 21:59:44' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 10])  = 'PWR W17x17' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:  7])  = 'Serp3x3' ;
WORKING_DIRECTORY         (idx, [1: 59])  = '/home/current/a/rizkiokt/Runs/run_11-28-21_Serpent_3x3_pins' ;
HOSTNAME                  (idx, [1: 24])  = 'current01.ecn.purdue.edu' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Xeon(R) Gold 6152 CPU @ 2.10GHz' ;
CPU_MHZ                   (idx, 1)        = 33581830.0 ;
START_DATE                (idx, [1: 24])  = 'Sun Nov 28 22:04:16 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sun Nov 28 22:52:42 2021' ;

% Run parameters:

POP                       (idx, 1)        = 500000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 100 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1625068908699 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 44 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  44]) = [  1.01418E+00  9.99259E-01  9.98143E-01  1.00266E+00  1.00225E+00  1.00297E+00  1.00030E+00  9.99594E-01  1.00334E+00  9.95421E-01  9.98258E-01  9.89575E-01  9.95444E-01  1.00328E+00  1.00452E+00  9.98562E-01  9.98442E-01  1.00132E+00  1.00292E+00  9.99399E-01  1.00010E+00  9.99775E-01  1.00213E+00  1.00301E+00  9.97437E-01  1.00272E+00  1.00179E+00  9.98333E-01  9.97895E-01  9.97378E-01  9.99808E-01  1.00024E+00  9.99725E-01  1.00134E+00  1.00252E+00  9.99371E-01  9.96081E-01  9.93536E-01  9.99567E-01  9.99376E-01  9.95197E-01  9.98444E-01  1.00198E+00  1.00245E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 57])  = '/home/current/a/rizkiokt/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.2E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.50237E-02 0.00011  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.84976E-01 1.7E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.65133E-01 7.6E-06  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.65672E-01 7.6E-06  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.10555E+00 3.3E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.02954E+00 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.48618E+01 3.4E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 250000344 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.56569E+03 ;
RUNNING_TIME              (idx, 1)        =  4.84211E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.19850E-01  1.19850E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.51666E-03  2.51666E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.82986E+01  4.82986E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.84077E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 32.33490 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.28552E+01 0.00072 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.26979E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 191860.65 ;
ALLOC_MEMSIZE             (idx, 1)        = 4174.28;
MEMSIZE                   (idx, 1)        = 3879.31;
XS_MEMSIZE                (idx, 1)        = 401.30;
MAT_MEMSIZE               (idx, 1)        = 28.70;
RES_MEMSIZE               (idx, 1)        = 110.40;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 3338.90;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 294.97;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 11 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 169724 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 11 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 24 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 24 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 548 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:  9])  = [ 0 0 0 0 0 0 0 0 0 ];
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  1.99710E-06 5.2E-05  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  4.80936E-01 0.00015 ];
U235_FISS                 (idx, [1:   4]) = [  4.50733E-01 7.3E-05  9.39504E-01 2.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  2.90235E-02 0.00038  6.04961E-02 0.00036 ];
U235_CAPT                 (idx, [1:   4]) = [  1.00242E-01 0.00019  1.92647E-01 0.00018 ];
U238_CAPT                 (idx, [1:   4]) = [  2.65000E-01 0.00012  5.09284E-01 8.8E-05 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 250000344 2.50000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 3.86939E+05 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 130067826 1.30274E+08 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 119932518 1.20113E+08 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -2.65241E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.55663E-11 2.7E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  4.05378E-16 2.7E-05 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.17994E+00 2.6E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.79653E-01 2.7E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.20347E-01 2.5E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98551E-01 5.2E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.50908E+01 4.2E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.95057E+01 3.3E-05 ];
INI_FMASS                 (idx, 1)        =  3.83996E-02 ;
TOT_FMASS                 (idx, 1)        =  3.83996E-02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.83062E+00 4.8E-05 ];
SIX_FF_F                  (idx, [1:   2]) = [  7.95599E-01 4.1E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  6.36203E-01 4.7E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.27555E+00 4.8E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45998E+00 1.8E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02558E+02 1.8E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.18189E+00 6.5E-05  1.17383E+00 6.4E-05  8.08075E-03 0.00102 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.18165E+00 6.5E-05 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.73796E+01 2.6E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.73800E+01 1.2E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  5.66479E-07 0.00044 ];
IMP_EALF                  (idx, [1:   2]) = [  5.66232E-07 0.00020 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  2.07321E-01 0.00038 ];
IMP_AFGE                  (idx, [1:   2]) = [  2.07222E-01 0.00017 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.02678E-03 0.00075  1.72744E-04 0.00446  9.55084E-04 0.00185  9.43582E-04 0.00181  2.76593E-03 0.00113  8.92720E-04 0.00195  2.96720E-04 0.00344 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.06595E-01 0.00179  1.24908E-02 2.9E-07  3.16569E-02 2.8E-05  1.10164E-01 3.7E-05  3.20558E-01 2.9E-05  1.34575E+00 2.3E-05  8.88662E+00 0.00019 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.89329E-03 0.00113  1.98220E-04 0.00636  1.09514E-03 0.00258  1.07955E-03 0.00272  3.15951E-03 0.00170  1.02165E-03 0.00288  3.39219E-04 0.00501 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.06165E-01 0.00260  1.24908E-02 4.4E-07  3.16577E-02 4.2E-05  1.10168E-01 5.6E-05  3.20577E-01 4.5E-05  1.34579E+00 3.1E-05  8.88376E+00 0.00030 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.99160E-05 0.00014  1.99052E-05 0.00014  2.14793E-05 0.00147 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.35384E-05 0.00013  2.35257E-05 0.00013  2.53861E-05 0.00146 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.83782E-03 0.00103  1.94925E-04 0.00651  1.08713E-03 0.00266  1.07343E-03 0.00270  3.13198E-03 0.00160  1.01336E-03 0.00289  3.37001E-04 0.00487 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.06794E-01 0.00257  1.24908E-02 4.5E-07  3.16568E-02 4.3E-05  1.10165E-01 5.6E-05  3.20578E-01 4.6E-05  1.34577E+00 3.2E-05  8.88463E+00 0.00029 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.99156E-05 0.00031  1.99043E-05 0.00031  2.15657E-05 0.00342 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.35379E-05 0.00030  2.35246E-05 0.00030  2.54883E-05 0.00341 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.85160E-03 0.00342  2.00895E-04 0.02024  1.10231E-03 0.00832  1.05814E-03 0.00825  3.15176E-03 0.00485  1.00073E-03 0.00884  3.37771E-04 0.01529 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.04077E-01 0.00798  1.24908E-02 1.4E-06  3.16619E-02 0.00012  1.10164E-01 0.00017  3.20565E-01 0.00013  1.34559E+00 9.9E-05  8.87858E+00 0.00082 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.85211E-03 0.00326  2.00562E-04 0.01954  1.09844E-03 0.00797  1.06133E-03 0.00807  3.15310E-03 0.00461  1.00123E-03 0.00866  3.37440E-04 0.01461 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.04272E-01 0.00773  1.24908E-02 1.4E-06  3.16633E-02 0.00012  1.10168E-01 0.00016  3.20569E-01 0.00013  1.34562E+00 9.5E-05  8.88083E+00 0.00081 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -3.44236E+02 0.00342 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.99363E-05 8.8E-05 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.35624E-05 5.6E-05 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.85305E-03 0.00063 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -3.43749E+02 0.00064 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  4.20984E-07 6.8E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.98483E-06 6.0E-05  2.98485E-06 6.0E-05  2.98290E-06 0.00072 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  2.64056E-05 7.8E-05  2.64054E-05 7.9E-05  2.64328E-05 0.00091 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  6.36752E-01 4.7E-05  6.35896E-01 4.7E-05  7.78250E-01 0.00120 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.02639E+01 0.00187 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.95043E+01 3.5E-05  3.22182E+01 4.7E-05 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  3])  = '007' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+01  6.25000E-07  1.00000E-11 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  3.98766E+05 0.00077  1.61065E+06 0.00045  3.35291E+06 0.00036  3.65904E+06 0.00029  3.40614E+06 0.00025  3.71478E+06 0.00027  2.52517E+06 0.00021  2.24706E+06 0.00032  1.71544E+06 0.00031  1.39753E+06 0.00033  1.20438E+06 0.00031  1.08421E+06 0.00025  9.99378E+05 0.00041  9.49132E+05 0.00028  9.24082E+05 0.00039  7.97425E+05 0.00027  7.87239E+05 0.00038  7.79311E+05 0.00041  7.64245E+05 0.00042  1.48819E+06 0.00027  1.42764E+06 0.00026  1.02512E+06 0.00039  6.60347E+05 0.00031  7.54679E+05 0.00038  7.07845E+05 0.00038  6.48147E+05 0.00042  1.04717E+06 0.00035  2.41889E+05 0.00053  3.03997E+05 0.00061  2.76538E+05 0.00067  1.59841E+05 0.00076  2.78236E+05 0.00064  1.89034E+05 0.00082  1.60113E+05 0.00060  3.02136E+04 0.00133  3.00687E+04 0.00163  3.08533E+04 0.00181  3.19229E+04 0.00144  3.15590E+04 0.00185  3.10485E+04 0.00141  3.22224E+04 0.00152  3.02322E+04 0.00175  5.72262E+04 0.00125  9.10560E+04 0.00118  1.16038E+05 0.00086  3.05654E+05 0.00055  3.19105E+05 0.00052  3.39308E+05 0.00051  2.20405E+05 0.00059  1.58022E+05 0.00078  1.19124E+05 0.00059  1.36511E+05 0.00053  2.47852E+05 0.00051  3.18710E+05 0.00048  5.79332E+05 0.00044  8.35284E+05 0.00037  1.16896E+06 0.00034  7.15106E+05 0.00042  4.98129E+05 0.00044  3.50655E+05 0.00041  3.09840E+05 0.00051  3.00800E+05 0.00033  2.47096E+05 0.00034  1.64706E+05 0.00058  1.50295E+05 0.00053  1.31756E+05 0.00050  1.09713E+05 0.00068  8.51033E+04 0.00085  5.56816E+04 0.00076  1.91052E+04 0.00112 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.21461E+00 0.00015 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  4.24422E+00 9.6E-05  7.56961E-01 0.00017 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  5.22182E-01 4.0E-05  1.26340E+00 6.8E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.63331E-03 0.00021  3.76242E-02 8.1E-05 ];
INF_ABS                   (idx, [1:   4]) = [  1.05743E-02 0.00019  9.93082E-02 0.00013 ];
INF_FISS                  (idx, [1:   4]) = [  2.94094E-03 0.00020  6.16841E-02 0.00016 ];
INF_NSF                   (idx, [1:   4]) = [  7.49532E-03 0.00020  1.50306E-01 0.00016 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.54861E+00 1.8E-05  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03653E+02 1.7E-06  2.02270E+02 2.7E-09 ];
INF_INVV                  (idx, [1:   4]) = [  5.74556E-08 0.00012  2.37252E-06 6.7E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  5.11606E-01 4.3E-05  1.16410E+00 7.2E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.23196E-01 6.7E-05  3.04363E-01 0.00015 ];
INF_SCATT2                (idx, [1:   4]) = [  8.82227E-02 0.00010  7.58398E-02 0.00053 ];
INF_SCATT3                (idx, [1:   4]) = [  7.50833E-03 0.00125  2.30461E-02 0.00137 ];
INF_SCATT4                (idx, [1:   4]) = [ -8.64362E-03 0.00076 -5.37100E-03 0.00485 ];
INF_SCATT5                (idx, [1:   4]) = [  5.03022E-04 0.01491  4.44218E-03 0.00484 ];
INF_SCATT6                (idx, [1:   4]) = [  4.74826E-03 0.00121 -1.15249E-02 0.00178 ];
INF_SCATT7                (idx, [1:   4]) = [  7.18747E-04 0.00764 -2.37525E-04 0.08877 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  5.11651E-01 4.3E-05  1.16410E+00 7.2E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.23197E-01 6.7E-05  3.04363E-01 0.00015 ];
INF_SCATTP2               (idx, [1:   4]) = [  8.82229E-02 0.00010  7.58398E-02 0.00053 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.50845E-03 0.00126  2.30461E-02 0.00137 ];
INF_SCATTP4               (idx, [1:   4]) = [ -8.64362E-03 0.00076 -5.37100E-03 0.00485 ];
INF_SCATTP5               (idx, [1:   4]) = [  5.03072E-04 0.01489  4.44218E-03 0.00484 ];
INF_SCATTP6               (idx, [1:   4]) = [  4.74820E-03 0.00121 -1.15249E-02 0.00178 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.18819E-04 0.00764 -2.37525E-04 0.08877 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.21821E-01 8.5E-05  8.48473E-01 8.9E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.50271E+00 8.5E-05  3.92863E-01 8.9E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.05291E-02 0.00019  9.93082E-02 0.00013 ];
INF_REMXS                 (idx, [1:   4]) = [  2.63563E-02 0.00017  1.01002E-01 0.00017 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
PM149_LAMBDA              (idx, 1)        =  0.00000E+00 ;
I135_LAMBDA               (idx, 1)        =  0.00000E+00 ;
XE135_LAMBDA              (idx, 1)        =  0.00000E+00 ;
XE135M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
I135_BR                   (idx, 1)        =  0.00000E+00 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  4.95826E-01 4.2E-05  1.57801E-02 0.00024  1.70171E-03 0.00207  1.16239E+00 7.2E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.18637E-01 6.6E-05  4.55905E-03 0.00046  6.19234E-04 0.00403  3.03744E-01 0.00015 ];
INF_S2                    (idx, [1:   8]) = [  8.95907E-02 9.7E-05 -1.36808E-03 0.00086  3.43218E-04 0.00510  7.54965E-02 0.00053 ];
INF_S3                    (idx, [1:   8]) = [  9.12338E-03 0.00100 -1.61504E-03 0.00076  1.23919E-04 0.00907  2.29222E-02 0.00139 ];
INF_S4                    (idx, [1:   8]) = [ -8.10831E-03 0.00078 -5.35313E-04 0.00192  9.87309E-07 1.00000 -5.37198E-03 0.00488 ];
INF_S5                    (idx, [1:   8]) = [  4.87658E-04 0.01560  1.53632E-05 0.05103 -5.05412E-05 0.02320  4.49272E-03 0.00478 ];
INF_S6                    (idx, [1:   8]) = [  4.87113E-03 0.00118 -1.22876E-04 0.00528 -6.45372E-05 0.01124 -1.14604E-02 0.00178 ];
INF_S7                    (idx, [1:   8]) = [  8.66561E-04 0.00664 -1.47815E-04 0.00605 -5.82256E-05 0.01531 -1.79299E-04 0.11666 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  4.95871E-01 4.1E-05  1.57801E-02 0.00024  1.70171E-03 0.00207  1.16239E+00 7.2E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.18638E-01 6.6E-05  4.55905E-03 0.00046  6.19234E-04 0.00403  3.03744E-01 0.00015 ];
INF_SP2                   (idx, [1:   8]) = [  8.95910E-02 9.7E-05 -1.36808E-03 0.00086  3.43218E-04 0.00510  7.54965E-02 0.00053 ];
INF_SP3                   (idx, [1:   8]) = [  9.12349E-03 0.00100 -1.61504E-03 0.00076  1.23919E-04 0.00907  2.29222E-02 0.00139 ];
INF_SP4                   (idx, [1:   8]) = [ -8.10831E-03 0.00078 -5.35313E-04 0.00192  9.87309E-07 1.00000 -5.37198E-03 0.00488 ];
INF_SP5                   (idx, [1:   8]) = [  4.87709E-04 0.01558  1.53632E-05 0.05103 -5.05412E-05 0.02320  4.49272E-03 0.00478 ];
INF_SP6                   (idx, [1:   8]) = [  4.87107E-03 0.00118 -1.22876E-04 0.00528 -6.45372E-05 0.01124 -1.14604E-02 0.00178 ];
INF_SP7                   (idx, [1:   8]) = [  8.66634E-04 0.00663 -1.47815E-04 0.00605 -5.82256E-05 0.01531 -1.79299E-04 0.11666 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  3.27278E-02 0.00012  1.08614E-01 0.00040 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  3.27355E-02 0.00018  1.08591E-01 0.00054 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  3.27401E-02 0.00014  1.08375E-01 0.00060 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  3.27079E-02 0.00015  1.08877E-01 0.00060 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.01850E+01 0.00012  3.06900E+00 0.00040 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.01826E+01 0.00018  3.06965E+00 0.00054 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.01812E+01 0.00014  3.07576E+00 0.00060 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.01912E+01 0.00015  3.06158E+00 0.00060 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.90337E-03 0.00244  2.00870E-04 0.01392  1.09986E-03 0.00592  1.08285E-03 0.00557  3.15854E-03 0.00349  1.02675E-03 0.00609  3.34494E-04 0.01072 ];
LAMBDA                    (idx, [1:  14]) = [  7.99694E-01 0.00557  1.24908E-02 9.4E-07  3.16580E-02 8.5E-05  1.10175E-01 0.00011  3.20596E-01 9.0E-05  1.34587E+00 6.4E-05  8.87891E+00 0.00062 ];

% Assembly discontinuity factors (order: W-S-E-N / NW-NE-SE-SW):

DF_SURFACE                (idx, [1:  3])  = '007' ;
DF_SURFACE_TYPE           (idx, 1)        = 15 ;
DF_SYM                    (idx, 1)        = 0 ;
DF_N_SURF                 (idx, 1)        = 6 ;
DF_N_CORN                 (idx, 1)        = 4 ;
DF_VOLUME                 (idx, 1)        =  1.59264E+01 ;
DF_SURF_AREA              (idx, [1:  6])  = [ 1.26200E+01  1.26200E+01  1.26200E+01  1.26200E+01  1.59264E+00  1.59264E+00 ];
DF_MID_AREA               (idx, [1:  6])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_CORN_AREA              (idx, [1:  4])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_SURF_IN_CURR           (idx, [1:  24]) = [  8.39296E-01 9.2E-05  1.54085E-01 0.00025  8.39405E-01 0.00010  1.54053E-01 0.00020  8.37869E-01 7.4E-05  1.58612E-01 0.00020  8.37882E-01 8.9E-05  1.58567E-01 0.00015  1.06193E-01 0.00026  1.88087E-02 0.00061  1.06238E-01 0.00020  1.87919E-02 0.00069 ];
DF_SURF_OUT_CURR          (idx, [1:  24]) = [  8.39296E-01 9.2E-05  1.54085E-01 0.00025  8.39405E-01 0.00010  1.54053E-01 0.00020  8.44259E-01 8.0E-05  1.53837E-01 0.00015  8.44322E-01 8.3E-05  1.53861E-01 0.00015  1.06193E-01 0.00026  1.88087E-02 0.00061  1.06238E-01 0.00020  1.87919E-02 0.00069 ];
DF_SURF_NET_CURR          (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -6.38994E-03 0.00962  4.77423E-03 0.00457 -6.44005E-03 0.00873  4.70624E-03 0.00487  7.58433E-08 0.79472  3.94280E-09 1.00000 -2.72599E-14 1.00000 -3.94261E-09 1.00000 ];
DF_MID_IN_CURR            (idx, [1:  24]) = [  8.45456E-02 0.00022  1.49066E-02 0.00056  8.45430E-02 0.00021  1.49195E-02 0.00065  8.45348E-02 0.00022  1.51858E-02 0.00056  8.45260E-02 0.00021  1.51752E-02 0.00042  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_OUT_CURR           (idx, [1:  24]) = [  8.45456E-02 0.00022  1.49066E-02 0.00056  8.45430E-02 0.00021  1.49195E-02 0.00065  8.50247E-02 0.00018  1.48294E-02 0.00064  8.50142E-02 0.00021  1.48526E-02 0.00051  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_NET_CURR           (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -4.89846E-04 0.05567  3.56490E-04 0.03291 -4.88141E-04 0.04736  3.22587E-04 0.02570  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_CORN_IN_CURR           (idx, [1:  16]) = [  8.34330E-02 0.00031  1.60182E-02 0.00068  8.23323E-02 0.00023  1.72091E-02 0.00050  8.34367E-02 0.00032  1.60064E-02 0.00044  8.35558E-02 0.00032  1.58029E-02 0.00071 ];
DF_CORN_OUT_CURR          (idx, [1:  16]) = [  8.35597E-02 0.00032  1.58725E-02 0.00055  8.38857E-02 0.00018  1.60717E-02 0.00039  8.35797E-02 0.00027  1.58723E-02 0.00058  8.35558E-02 0.00032  1.58029E-02 0.00071 ];
DF_CORN_NET_CURR          (idx, [1:  16]) = [ -1.26719E-04 0.16369  1.45642E-04 0.05086 -1.55332E-03 0.01427  1.13737E-03 0.00653 -1.43042E-04 0.11598  1.34136E-04 0.04816  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HET_VOL_FLUX           (idx, [1:   4]) = [  2.66499E-01 7.1E-05  4.75294E-02 0.00016 ];
DF_HET_SURF_FLUX          (idx, [1:  24]) = [  2.66021E-01 9.2E-05  4.88383E-02 0.00025  2.66055E-01 0.00010  4.88282E-02 0.00020  2.66581E-01 6.8E-05  4.95164E-02 0.00016  2.66593E-01 7.9E-05  4.95131E-02 0.00013  2.66709E-01 0.00026  4.72389E-02 0.00061  2.66821E-01 0.00020  4.71967E-02 0.00069 ];
DF_HET_CORN_FLUX          (idx, [1:  16]) = [  2.63965E-01 0.00039  5.09783E-02 0.00086  2.62505E-01 0.00027  5.32141E-02 0.00064  2.64069E-01 0.00034  5.09024E-02 0.00061  2.64473E-01 0.00038  5.04146E-02 0.00104 ];
DF_HOM_VOL_FLUX           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HOM_SURF_FLUX          (idx, [1:  24]) = [  2.66499E-01 7.1E-05  4.75294E-02 0.00016  2.66499E-01 7.1E-05  4.75294E-02 0.00016  2.66499E-01 7.1E-05  4.75294E-02 0.00016  2.66499E-01 7.1E-05  4.75294E-02 0.00016  2.66499E-01 7.1E-05  4.75294E-02 0.00016  2.66499E-01 7.1E-05  4.75294E-02 0.00016 ];
DF_HOM_CORN_FLUX          (idx, [1:  16]) = [  2.66499E-01 7.1E-05  4.75294E-02 0.00016  2.66499E-01 7.1E-05  4.75294E-02 0.00016  2.66499E-01 7.1E-05  4.75294E-02 0.00016  2.66499E-01 7.1E-05  4.75294E-02 0.00016 ];
DF_SURF_DF                (idx, [1:  24]) = [  9.98205E-01 5.1E-05  1.02754E+00 0.00015  9.98334E-01 5.5E-05  1.02733E+00 0.00014  1.00031E+00 4.5E-05  1.04181E+00 0.00013  1.00035E+00 4.8E-05  1.04174E+00 0.00013  1.00079E+00 0.00023  9.93888E-01 0.00059  1.00121E+00 0.00016  9.93001E-01 0.00068 ];
DF_CORN_DF                (idx, [1:  16]) = [  9.90489E-01 0.00037  1.07256E+00 0.00082  9.85011E-01 0.00029  1.11960E+00 0.00064  9.90880E-01 0.00034  1.07097E+00 0.00054  9.92395E-01 0.00038  1.06070E+00 0.00095 ];
DF_SGN_SURF_IN_CURR       (idx, [1:  24]) = [ -8.25972E-04 0.07735  3.65025E-04 0.06992 -7.77301E-04 0.05859  3.87409E-04 0.06937 -3.15296E-03 0.02213  2.64091E-03 0.00959 -3.07135E-03 0.01544  2.63977E-03 0.00991  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_OUT_CURR      (idx, [1:  24]) = [ -8.25972E-04 0.07735  3.65025E-04 0.06992 -7.77301E-04 0.05859  3.87409E-04 0.06937  1.67706E-05 1.00000  7.80403E-04 0.03522 -3.70748E-05 1.00000  8.14225E-04 0.03452  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_NET_CURR      (idx, [1:  24]) = [  2.04292E-21 0.89116  2.26980E-22 1.00000 -2.95152E-21 0.80909  0.00000E+00 0.0E+00 -3.16973E-03 0.02843  1.86050E-03 0.01729 -3.03428E-03 0.02241  1.82554E-03 0.01574  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HET_SURF_FLUX      (idx, [1:  24]) = [ -1.21870E-04 0.25561  1.00423E-04 0.13283 -1.04198E-04 0.20536  9.53523E-05 0.13229 -3.74341E-04 0.04753  5.33847E-04 0.02100 -3.60019E-04 0.04606  5.32429E-04 0.01637  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HOM_SURF_FLUX      (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_DF            (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.32' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov  9 2021 21:59:44' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 10])  = 'PWR W17x17' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:  7])  = 'Serp3x3' ;
WORKING_DIRECTORY         (idx, [1: 59])  = '/home/current/a/rizkiokt/Runs/run_11-28-21_Serpent_3x3_pins' ;
HOSTNAME                  (idx, [1: 24])  = 'current01.ecn.purdue.edu' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Xeon(R) Gold 6152 CPU @ 2.10GHz' ;
CPU_MHZ                   (idx, 1)        = 33581830.0 ;
START_DATE                (idx, [1: 24])  = 'Sun Nov 28 22:04:16 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sun Nov 28 22:52:42 2021' ;

% Run parameters:

POP                       (idx, 1)        = 500000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 100 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1625068908699 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 44 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  44]) = [  1.01418E+00  9.99259E-01  9.98143E-01  1.00266E+00  1.00225E+00  1.00297E+00  1.00030E+00  9.99594E-01  1.00334E+00  9.95421E-01  9.98258E-01  9.89575E-01  9.95444E-01  1.00328E+00  1.00452E+00  9.98562E-01  9.98442E-01  1.00132E+00  1.00292E+00  9.99399E-01  1.00010E+00  9.99775E-01  1.00213E+00  1.00301E+00  9.97437E-01  1.00272E+00  1.00179E+00  9.98333E-01  9.97895E-01  9.97378E-01  9.99808E-01  1.00024E+00  9.99725E-01  1.00134E+00  1.00252E+00  9.99371E-01  9.96081E-01  9.93536E-01  9.99567E-01  9.99376E-01  9.95197E-01  9.98444E-01  1.00198E+00  1.00245E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 57])  = '/home/current/a/rizkiokt/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.2E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.50237E-02 0.00011  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.84976E-01 1.7E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.65133E-01 7.6E-06  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.65672E-01 7.6E-06  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.10555E+00 3.3E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.02954E+00 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.48618E+01 3.4E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 250000344 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.56569E+03 ;
RUNNING_TIME              (idx, 1)        =  4.84211E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.19850E-01  1.19850E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.51666E-03  2.51666E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.82986E+01  4.82986E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.84077E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 32.33491 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.28552E+01 0.00072 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.26979E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 191860.65 ;
ALLOC_MEMSIZE             (idx, 1)        = 4174.28;
MEMSIZE                   (idx, 1)        = 3879.31;
XS_MEMSIZE                (idx, 1)        = 401.30;
MAT_MEMSIZE               (idx, 1)        = 28.70;
RES_MEMSIZE               (idx, 1)        = 110.40;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 3338.90;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 294.97;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 11 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 169724 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 11 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 24 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 24 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 548 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:  9])  = [ 0 0 0 0 0 0 0 0 0 ];
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  1.99710E-06 5.2E-05  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  4.80936E-01 0.00015 ];
U235_FISS                 (idx, [1:   4]) = [  4.50733E-01 7.3E-05  9.39504E-01 2.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  2.90235E-02 0.00038  6.04961E-02 0.00036 ];
U235_CAPT                 (idx, [1:   4]) = [  1.00242E-01 0.00019  1.92647E-01 0.00018 ];
U238_CAPT                 (idx, [1:   4]) = [  2.65000E-01 0.00012  5.09284E-01 8.8E-05 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 250000344 2.50000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 3.86939E+05 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 130067826 1.30274E+08 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 119932518 1.20113E+08 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -2.65241E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.55663E-11 2.7E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  4.05378E-16 2.7E-05 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.17994E+00 2.6E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.79653E-01 2.7E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.20347E-01 2.5E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98551E-01 5.2E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.50908E+01 4.2E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.95057E+01 3.3E-05 ];
INI_FMASS                 (idx, 1)        =  3.83996E-02 ;
TOT_FMASS                 (idx, 1)        =  3.83996E-02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.83062E+00 4.8E-05 ];
SIX_FF_F                  (idx, [1:   2]) = [  7.95599E-01 4.1E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  6.36203E-01 4.7E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.27555E+00 4.8E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45998E+00 1.8E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02558E+02 1.8E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.18189E+00 6.5E-05  1.17383E+00 6.4E-05  8.08075E-03 0.00102 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.18165E+00 6.5E-05 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.73796E+01 2.6E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.73800E+01 1.2E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  5.66479E-07 0.00044 ];
IMP_EALF                  (idx, [1:   2]) = [  5.66232E-07 0.00020 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  2.07321E-01 0.00038 ];
IMP_AFGE                  (idx, [1:   2]) = [  2.07222E-01 0.00017 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.02678E-03 0.00075  1.72744E-04 0.00446  9.55084E-04 0.00185  9.43582E-04 0.00181  2.76593E-03 0.00113  8.92720E-04 0.00195  2.96720E-04 0.00344 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.06595E-01 0.00179  1.24908E-02 2.9E-07  3.16569E-02 2.8E-05  1.10164E-01 3.7E-05  3.20558E-01 2.9E-05  1.34575E+00 2.3E-05  8.88662E+00 0.00019 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.89329E-03 0.00113  1.98220E-04 0.00636  1.09514E-03 0.00258  1.07955E-03 0.00272  3.15951E-03 0.00170  1.02165E-03 0.00288  3.39219E-04 0.00501 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.06165E-01 0.00260  1.24908E-02 4.4E-07  3.16577E-02 4.2E-05  1.10168E-01 5.6E-05  3.20577E-01 4.5E-05  1.34579E+00 3.1E-05  8.88376E+00 0.00030 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.99160E-05 0.00014  1.99052E-05 0.00014  2.14793E-05 0.00147 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.35384E-05 0.00013  2.35257E-05 0.00013  2.53861E-05 0.00146 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.83782E-03 0.00103  1.94925E-04 0.00651  1.08713E-03 0.00266  1.07343E-03 0.00270  3.13198E-03 0.00160  1.01336E-03 0.00289  3.37001E-04 0.00487 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.06794E-01 0.00257  1.24908E-02 4.5E-07  3.16568E-02 4.3E-05  1.10165E-01 5.6E-05  3.20578E-01 4.6E-05  1.34577E+00 3.2E-05  8.88463E+00 0.00029 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.99156E-05 0.00031  1.99043E-05 0.00031  2.15657E-05 0.00342 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.35379E-05 0.00030  2.35246E-05 0.00030  2.54883E-05 0.00341 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.85160E-03 0.00342  2.00895E-04 0.02024  1.10231E-03 0.00832  1.05814E-03 0.00825  3.15176E-03 0.00485  1.00073E-03 0.00884  3.37771E-04 0.01529 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.04077E-01 0.00798  1.24908E-02 1.4E-06  3.16619E-02 0.00012  1.10164E-01 0.00017  3.20565E-01 0.00013  1.34559E+00 9.9E-05  8.87858E+00 0.00082 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.85211E-03 0.00326  2.00562E-04 0.01954  1.09844E-03 0.00797  1.06133E-03 0.00807  3.15310E-03 0.00461  1.00123E-03 0.00866  3.37440E-04 0.01461 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.04272E-01 0.00773  1.24908E-02 1.4E-06  3.16633E-02 0.00012  1.10168E-01 0.00016  3.20569E-01 0.00013  1.34562E+00 9.5E-05  8.88083E+00 0.00081 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -3.44236E+02 0.00342 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.99363E-05 8.8E-05 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.35624E-05 5.6E-05 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.85305E-03 0.00063 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -3.43749E+02 0.00064 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  4.20984E-07 6.8E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.98483E-06 6.0E-05  2.98485E-06 6.0E-05  2.98290E-06 0.00072 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  2.64056E-05 7.8E-05  2.64054E-05 7.9E-05  2.64328E-05 0.00091 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  6.36752E-01 4.7E-05  6.35896E-01 4.7E-05  7.78250E-01 0.00120 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.02639E+01 0.00187 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.95043E+01 3.5E-05  3.22182E+01 4.7E-05 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  3])  = '008' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+01  6.25000E-07  1.00000E-11 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  3.97308E+05 0.00122  1.60576E+06 0.00045  3.33980E+06 0.00039  3.64186E+06 0.00028  3.38558E+06 0.00028  3.68825E+06 0.00030  2.51098E+06 0.00029  2.23254E+06 0.00029  1.70762E+06 0.00028  1.39287E+06 0.00025  1.20095E+06 0.00038  1.08238E+06 0.00033  9.97749E+05 0.00031  9.48951E+05 0.00036  9.24826E+05 0.00032  7.97744E+05 0.00039  7.87330E+05 0.00045  7.79683E+05 0.00046  7.65218E+05 0.00030  1.49119E+06 0.00027  1.43162E+06 0.00029  1.02961E+06 0.00032  6.63624E+05 0.00036  7.60414E+05 0.00039  7.14021E+05 0.00042  6.52805E+05 0.00035  1.05870E+06 0.00027  2.43655E+05 0.00074  3.05616E+05 0.00057  2.77646E+05 0.00047  1.60620E+05 0.00087  2.79612E+05 0.00054  1.90048E+05 0.00064  1.60787E+05 0.00085  3.04978E+04 0.00195  3.02786E+04 0.00152  3.10507E+04 0.00166  3.20160E+04 0.00124  3.17558E+04 0.00123  3.11482E+04 0.00183  3.24052E+04 0.00127  3.04813E+04 0.00157  5.75230E+04 0.00138  9.16985E+04 0.00114  1.16631E+05 0.00087  3.06691E+05 0.00066  3.20716E+05 0.00065  3.41385E+05 0.00042  2.22457E+05 0.00060  1.59774E+05 0.00065  1.20401E+05 0.00082  1.38170E+05 0.00081  2.50920E+05 0.00060  3.23774E+05 0.00048  5.89576E+05 0.00047  8.52784E+05 0.00031  1.19920E+06 0.00018  7.36069E+05 0.00033  5.14363E+05 0.00044  3.63163E+05 0.00040  3.21414E+05 0.00039  3.12147E+05 0.00037  2.57158E+05 0.00051  1.71805E+05 0.00056  1.57086E+05 0.00064  1.37938E+05 0.00059  1.15207E+05 0.00058  8.91990E+04 0.00075  5.84530E+04 0.00074  1.99667E+04 0.00122 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.21652E+00 0.00018 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  4.23681E+00 7.7E-05  7.76186E-01 0.00013 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  5.23288E-01 5.4E-05  1.26677E+00 7.3E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.76310E-03 0.00019  3.78332E-02 7.3E-05 ];
INF_ABS                   (idx, [1:   4]) = [  1.07190E-02 0.00014  9.99500E-02 0.00012 ];
INF_FISS                  (idx, [1:   4]) = [  2.95589E-03 0.00014  6.21168E-02 0.00016 ];
INF_NSF                   (idx, [1:   4]) = [  7.53187E-03 0.00015  1.51360E-01 0.00016 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.54809E+00 1.7E-05  2.43670E+00 2.7E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03646E+02 2.0E-06  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  5.78878E-08 0.00017  2.38537E-06 5.0E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  5.12572E-01 5.3E-05  1.16681E+00 8.4E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.23587E-01 8.4E-05  3.04077E-01 0.00017 ];
INF_SCATT2                (idx, [1:   4]) = [  8.83697E-02 0.00013  7.55884E-02 0.00051 ];
INF_SCATT3                (idx, [1:   4]) = [  7.51990E-03 0.00120  2.29571E-02 0.00127 ];
INF_SCATT4                (idx, [1:   4]) = [ -8.68947E-03 0.00079 -5.41599E-03 0.00587 ];
INF_SCATT5                (idx, [1:   4]) = [  4.81096E-04 0.00977  4.43883E-03 0.00530 ];
INF_SCATT6                (idx, [1:   4]) = [  4.74045E-03 0.00144 -1.16920E-02 0.00151 ];
INF_SCATT7                (idx, [1:   4]) = [  7.20274E-04 0.00777 -2.43404E-04 0.07227 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  5.12617E-01 5.3E-05  1.16681E+00 8.4E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.23588E-01 8.4E-05  3.04077E-01 0.00017 ];
INF_SCATTP2               (idx, [1:   4]) = [  8.83701E-02 0.00013  7.55884E-02 0.00051 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.51979E-03 0.00120  2.29571E-02 0.00127 ];
INF_SCATTP4               (idx, [1:   4]) = [ -8.68941E-03 0.00079 -5.41599E-03 0.00587 ];
INF_SCATTP5               (idx, [1:   4]) = [  4.81190E-04 0.00975  4.43883E-03 0.00530 ];
INF_SCATTP6               (idx, [1:   4]) = [  4.74042E-03 0.00144 -1.16920E-02 0.00151 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.20346E-04 0.00778 -2.43404E-04 0.07227 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.22319E-01 0.00011  8.51222E-01 9.5E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.49935E+00 0.00011  3.91594E-01 9.5E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.06734E-02 0.00015  9.99500E-02 0.00012 ];
INF_REMXS                 (idx, [1:   4]) = [  2.66126E-02 0.00019  1.01641E-01 0.00024 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
PM149_LAMBDA              (idx, 1)        =  0.00000E+00 ;
I135_LAMBDA               (idx, 1)        =  0.00000E+00 ;
XE135_LAMBDA              (idx, 1)        =  0.00000E+00 ;
XE135M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
I135_BR                   (idx, 1)        =  0.00000E+00 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  4.96676E-01 5.1E-05  1.58961E-02 0.00028  1.67234E-03 0.00155  1.16513E+00 8.4E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.18996E-01 8.4E-05  4.59131E-03 0.00044  6.11264E-04 0.00307  3.03466E-01 0.00017 ];
INF_S2                    (idx, [1:   8]) = [  8.97490E-02 0.00012 -1.37922E-03 0.00122  3.39305E-04 0.00412  7.52491E-02 0.00051 ];
INF_S3                    (idx, [1:   8]) = [  9.14725E-03 0.00097 -1.62734E-03 0.00070  1.23159E-04 0.00888  2.28339E-02 0.00128 ];
INF_S4                    (idx, [1:   8]) = [ -8.15329E-03 0.00082 -5.36179E-04 0.00222  8.21655E-07 1.00000 -5.41681E-03 0.00587 ];
INF_S5                    (idx, [1:   8]) = [  4.63756E-04 0.00970  1.73403E-05 0.05481 -5.04136E-05 0.02236  4.48924E-03 0.00524 ];
INF_S6                    (idx, [1:   8]) = [  4.86578E-03 0.00137 -1.25327E-04 0.00767 -6.38078E-05 0.01583 -1.16282E-02 0.00153 ];
INF_S7                    (idx, [1:   8]) = [  8.70263E-04 0.00629 -1.49989E-04 0.00625 -5.74627E-05 0.01343 -1.85941E-04 0.09531 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  4.96721E-01 5.1E-05  1.58961E-02 0.00028  1.67234E-03 0.00155  1.16513E+00 8.4E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.18997E-01 8.4E-05  4.59131E-03 0.00044  6.11264E-04 0.00307  3.03466E-01 0.00017 ];
INF_SP2                   (idx, [1:   8]) = [  8.97493E-02 0.00012 -1.37922E-03 0.00122  3.39305E-04 0.00412  7.52491E-02 0.00051 ];
INF_SP3                   (idx, [1:   8]) = [  9.14713E-03 0.00098 -1.62734E-03 0.00070  1.23159E-04 0.00888  2.28339E-02 0.00128 ];
INF_SP4                   (idx, [1:   8]) = [ -8.15324E-03 0.00081 -5.36179E-04 0.00222  8.21655E-07 1.00000 -5.41681E-03 0.00587 ];
INF_SP5                   (idx, [1:   8]) = [  4.63850E-04 0.00968  1.73403E-05 0.05481 -5.04136E-05 0.02236  4.48924E-03 0.00524 ];
INF_SP6                   (idx, [1:   8]) = [  4.86575E-03 0.00137 -1.25327E-04 0.00767 -6.38078E-05 0.01583 -1.16282E-02 0.00153 ];
INF_SP7                   (idx, [1:   8]) = [  8.70335E-04 0.00630 -1.49989E-04 0.00625 -5.74627E-05 0.01343 -1.85941E-04 0.09531 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  2.87091E-02 8.6E-05  9.77682E-02 0.00037 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.87188E-02 0.00013  9.77025E-02 0.00056 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.87171E-02 0.00012  9.77154E-02 0.00057 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.86913E-02 0.00012  9.78882E-02 0.00053 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.16107E+01 8.6E-05  3.40944E+00 0.00037 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.16068E+01 0.00013  3.41174E+00 0.00056 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.16075E+01 0.00012  3.41130E+00 0.00057 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.16179E+01 0.00012  3.40527E+00 0.00053 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.89249E-03 0.00225  1.97984E-04 0.01300  1.10120E-03 0.00564  1.08561E-03 0.00559  3.14707E-03 0.00312  1.02018E-03 0.00584  3.40447E-04 0.01010 ];
LAMBDA                    (idx, [1:  14]) = [  8.06889E-01 0.00520  1.24908E-02 8.9E-07  3.16584E-02 8.6E-05  1.10167E-01 0.00011  3.20568E-01 8.8E-05  1.34582E+00 6.3E-05  8.88784E+00 0.00057 ];

% Assembly discontinuity factors (order: W-S-E-N / NW-NE-SE-SW):

DF_SURFACE                (idx, [1:  3])  = '008' ;
DF_SURFACE_TYPE           (idx, 1)        = 15 ;
DF_SYM                    (idx, 1)        = 0 ;
DF_N_SURF                 (idx, 1)        = 6 ;
DF_N_CORN                 (idx, 1)        = 4 ;
DF_VOLUME                 (idx, 1)        =  1.59264E+01 ;
DF_SURF_AREA              (idx, [1:  6])  = [ 1.26200E+01  1.26200E+01  1.26200E+01  1.26200E+01  1.59264E+00  1.59264E+00 ];
DF_MID_AREA               (idx, [1:  6])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_CORN_AREA              (idx, [1:  4])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_SURF_IN_CURR           (idx, [1:  24]) = [  8.44259E-01 8.0E-05  1.53837E-01 0.00015  8.37729E-01 7.5E-05  1.57224E-01 0.00020  8.44234E-01 8.1E-05  1.53884E-01 0.00018  8.16956E-01 8.4E-05  1.78677E-01 0.00019  1.05958E-01 0.00024  1.92919E-02 0.00063  1.05989E-01 0.00025  1.92925E-02 0.00051 ];
DF_SURF_OUT_CURR          (idx, [1:  24]) = [  8.37869E-01 7.4E-05  1.58612E-01 0.00020  8.37729E-01 7.5E-05  1.57224E-01 0.00020  8.37833E-01 8.0E-05  1.58606E-01 0.00018  8.44940E-01 9.8E-05  1.57637E-01 0.00017  1.05958E-01 0.00024  1.92919E-02 0.00063  1.05989E-01 0.00025  1.92925E-02 0.00051 ];
DF_SURF_NET_CURR          (idx, [1:  24]) = [  6.38994E-03 0.00962 -4.77423E-03 0.00457  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  6.40110E-03 0.01175 -4.72212E-03 0.00421 -2.79831E-02 0.00245  2.10402E-02 0.00116  4.40465E-08 1.00000  8.06468E-09 1.00000  5.60796E-08 1.00000 -2.00921E-08 1.00000 ];
DF_MID_IN_CURR            (idx, [1:  24]) = [  8.50247E-02 0.00018  1.48294E-02 0.00064  8.43547E-02 0.00027  1.52994E-02 0.00053  8.50264E-02 0.00021  1.48535E-02 0.00050  8.14477E-02 0.00021  1.80793E-02 0.00057  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_OUT_CURR           (idx, [1:  24]) = [  8.45348E-02 0.00022  1.51858E-02 0.00056  8.43547E-02 0.00027  1.52994E-02 0.00053  8.45082E-02 0.00021  1.51847E-02 0.00058  8.51421E-02 0.00024  1.53272E-02 0.00062  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_NET_CURR           (idx, [1:  24]) = [  4.89846E-04 0.05567 -3.56490E-04 0.03291  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  5.18289E-04 0.04980 -3.31227E-04 0.02712 -3.69445E-03 0.00673  2.75209E-03 0.00477  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_CORN_IN_CURR           (idx, [1:  16]) = [  8.30372E-02 0.00018  1.67418E-02 0.00030  8.30004E-02 0.00031  1.67450E-02 0.00047  8.35765E-02 0.00027  1.58932E-02 0.00068  8.35843E-02 0.00020  1.59124E-02 0.00045 ];
DF_CORN_OUT_CURR          (idx, [1:  16]) = [  8.31225E-02 0.00021  1.66581E-02 0.00058  8.31217E-02 0.00034  1.66457E-02 0.00052  8.34330E-02 0.00025  1.60266E-02 0.00074  8.34413E-02 0.00023  1.60465E-02 0.00043 ];
DF_CORN_NET_CURR          (idx, [1:  16]) = [ -8.52370E-05 0.27047  8.36270E-05 0.11942 -1.21273E-04 0.19475  9.93013E-05 0.08169  1.43554E-04 0.11928 -1.33389E-04 0.05372  1.43042E-04 0.11598 -1.34136E-04 0.04816 ];
DF_HET_VOL_FLUX           (idx, [1:   4]) = [  2.66008E-01 7.1E-05  4.87357E-02 0.00011 ];
DF_HET_SURF_FLUX          (idx, [1:  24]) = [  2.66581E-01 6.8E-05  4.95164E-02 0.00016  2.65524E-01 7.5E-05  4.98332E-02 0.00020  2.66572E-01 6.7E-05  4.95229E-02 0.00017  2.63375E-01 8.2E-05  5.32985E-02 0.00017  2.66118E-01 0.00024  4.84525E-02 0.00063  2.66196E-01 0.00025  4.84539E-02 0.00051 ];
DF_HET_CORN_FLUX          (idx, [1:  16]) = [  2.62468E-01 0.00024  5.33390E-02 0.00064  2.62467E-01 0.00033  5.33045E-02 0.00045  2.64034E-01 0.00035  5.09627E-02 0.00083  2.63992E-01 0.00027  5.10545E-02 0.00069 ];
DF_HOM_VOL_FLUX           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HOM_SURF_FLUX          (idx, [1:  24]) = [  2.66008E-01 7.1E-05  4.87357E-02 0.00011  2.66008E-01 7.1E-05  4.87357E-02 0.00011  2.66008E-01 7.1E-05  4.87357E-02 0.00011  2.66008E-01 7.1E-05  4.87357E-02 0.00011  2.66008E-01 7.1E-05  4.87357E-02 0.00011  2.66008E-01 7.1E-05  4.87357E-02 0.00011 ];
DF_HOM_CORN_FLUX          (idx, [1:  16]) = [  2.66008E-01 7.1E-05  4.87357E-02 0.00011  2.66008E-01 7.1E-05  4.87357E-02 0.00011  2.66008E-01 7.1E-05  4.87357E-02 0.00011  2.66008E-01 7.1E-05  4.87357E-02 0.00011 ];
DF_SURF_DF                (idx, [1:  24]) = [  1.00216E+00 4.4E-05  1.01602E+00 0.00015  9.98182E-01 5.2E-05  1.02252E+00 0.00017  1.00212E+00 5.0E-05  1.01615E+00 0.00014  9.90102E-01 3.4E-05  1.09362E+00 0.00012  1.00041E+00 0.00024  9.94190E-01 0.00063  1.00071E+00 0.00023  9.94219E-01 0.00049 ];
DF_CORN_DF                (idx, [1:  16]) = [  9.86693E-01 0.00025  1.09445E+00 0.00062  9.86689E-01 0.00030  1.09375E+00 0.00043  9.92581E-01 0.00034  1.04570E+00 0.00081  9.92424E-01 0.00026  1.04758E+00 0.00068 ];
DF_SGN_SURF_IN_CURR       (idx, [1:  24]) = [  1.67706E-05 1.00000  7.80403E-04 0.03522 -1.43174E-04 0.40442 -3.70296E-05 0.66814 -5.67462E-05 0.78403  8.08266E-04 0.03214 -1.58983E-04 0.33077 -1.85902E-06 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_OUT_CURR      (idx, [1:  24]) = [ -3.15296E-03 0.02213  2.64091E-03 0.00959 -1.43174E-04 0.40442 -3.70296E-05 0.66814 -3.02307E-03 0.01826  2.63413E-03 0.01089 -2.95737E-06 1.00000  1.02741E-05 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_NET_CURR      (idx, [1:  24]) = [  3.16973E-03 0.02843 -1.86050E-03 0.01729 -1.58906E-21 0.63616  0.00000E+00 0.0E+00  2.96632E-03 0.02509 -1.82587E-03 0.01820 -1.56026E-04 0.51740 -1.21331E-05 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HET_SURF_FLUX      (idx, [1:  24]) = [ -3.74341E-04 0.04753  5.33847E-04 0.02100 -9.57755E-05 0.27134 -1.43838E-05 1.00000 -3.42654E-04 0.06471  5.24424E-04 0.01881 -2.07869E-05 1.00000 -1.61455E-06 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HOM_SURF_FLUX      (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_DF            (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.32' ;
COMPILE_DATE              (idx, [1: 20])  = 'Nov  9 2021 21:59:44' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 10])  = 'PWR W17x17' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:  7])  = 'Serp3x3' ;
WORKING_DIRECTORY         (idx, [1: 59])  = '/home/current/a/rizkiokt/Runs/run_11-28-21_Serpent_3x3_pins' ;
HOSTNAME                  (idx, [1: 24])  = 'current01.ecn.purdue.edu' ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Xeon(R) Gold 6152 CPU @ 2.10GHz' ;
CPU_MHZ                   (idx, 1)        = 33581830.0 ;
START_DATE                (idx, [1: 24])  = 'Sun Nov 28 22:04:16 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sun Nov 28 22:52:42 2021' ;

% Run parameters:

POP                       (idx, 1)        = 500000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 100 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1625068908699 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 44 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  44]) = [  1.01418E+00  9.99259E-01  9.98143E-01  1.00266E+00  1.00225E+00  1.00297E+00  1.00030E+00  9.99594E-01  1.00334E+00  9.95421E-01  9.98258E-01  9.89575E-01  9.95444E-01  1.00328E+00  1.00452E+00  9.98562E-01  9.98442E-01  1.00132E+00  1.00292E+00  9.99399E-01  1.00010E+00  9.99775E-01  1.00213E+00  1.00301E+00  9.97437E-01  1.00272E+00  1.00179E+00  9.98333E-01  9.97895E-01  9.97378E-01  9.99808E-01  1.00024E+00  9.99725E-01  1.00134E+00  1.00252E+00  9.99371E-01  9.96081E-01  9.93536E-01  9.99567E-01  9.99376E-01  9.95197E-01  9.98444E-01  1.00198E+00  1.00245E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 57])  = '/home/current/a/rizkiokt/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.2E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.50237E-02 0.00011  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.84976E-01 1.7E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.65133E-01 7.6E-06  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.65672E-01 7.6E-06  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.10555E+00 3.3E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  2.95043E+01 3.5E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.02954E+00 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.48618E+01 3.4E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 250000344 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00001E+05 0.00009 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.56569E+03 ;
RUNNING_TIME              (idx, 1)        =  4.84211E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.19850E-01  1.19850E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.51666E-03  2.51666E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.82986E+01  4.82986E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.84077E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 32.33491 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.28552E+01 0.00072 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.26978E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 191860.65 ;
ALLOC_MEMSIZE             (idx, 1)        = 4174.28;
MEMSIZE                   (idx, 1)        = 3879.31;
XS_MEMSIZE                (idx, 1)        = 401.30;
MAT_MEMSIZE               (idx, 1)        = 28.70;
RES_MEMSIZE               (idx, 1)        = 110.40;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 3338.90;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 294.97;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 11 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 169724 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 11 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 24 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 24 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 548 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:  9])  = [ 0 0 0 0 0 0 0 0 0 ];
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  1.99710E-06 5.2E-05  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  4.80936E-01 0.00015 ];
U235_FISS                 (idx, [1:   4]) = [  4.50733E-01 7.3E-05  9.39504E-01 2.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  2.90235E-02 0.00038  6.04961E-02 0.00036 ];
U235_CAPT                 (idx, [1:   4]) = [  1.00242E-01 0.00019  1.92647E-01 0.00018 ];
U238_CAPT                 (idx, [1:   4]) = [  2.65000E-01 0.00012  5.09284E-01 8.8E-05 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 250000344 2.50000E+08 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 3.86939E+05 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 130067826 1.30274E+08 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 119932518 1.20113E+08 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 250000344 2.50387E+08 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -2.65241E-06 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.55663E-11 2.7E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  4.05378E-16 2.7E-05 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.17994E+00 2.6E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.79653E-01 2.7E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.20347E-01 2.5E-05 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98551E-01 5.2E-05 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.50908E+01 4.2E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.95057E+01 3.3E-05 ];
INI_FMASS                 (idx, 1)        =  3.83996E-02 ;
TOT_FMASS                 (idx, 1)        =  3.83996E-02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.83062E+00 4.8E-05 ];
SIX_FF_F                  (idx, [1:   2]) = [  7.95599E-01 4.1E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  6.36203E-01 4.7E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.27555E+00 4.8E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.18191E+00 6.4E-05 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45998E+00 1.8E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02558E+02 1.8E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.18189E+00 6.5E-05  1.17383E+00 6.4E-05  8.08075E-03 0.00102 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.18165E+00 6.5E-05 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.18176E+00 2.7E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.73796E+01 2.6E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.73800E+01 1.2E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  5.66479E-07 0.00044 ];
IMP_EALF                  (idx, [1:   2]) = [  5.66232E-07 0.00020 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  2.07321E-01 0.00038 ];
IMP_AFGE                  (idx, [1:   2]) = [  2.07222E-01 0.00017 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.02678E-03 0.00075  1.72744E-04 0.00446  9.55084E-04 0.00185  9.43582E-04 0.00181  2.76593E-03 0.00113  8.92720E-04 0.00195  2.96720E-04 0.00344 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.06595E-01 0.00179  1.24908E-02 2.9E-07  3.16569E-02 2.8E-05  1.10164E-01 3.7E-05  3.20558E-01 2.9E-05  1.34575E+00 2.3E-05  8.88662E+00 0.00019 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.89329E-03 0.00113  1.98220E-04 0.00636  1.09514E-03 0.00258  1.07955E-03 0.00272  3.15951E-03 0.00170  1.02165E-03 0.00288  3.39219E-04 0.00501 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.06165E-01 0.00260  1.24908E-02 4.4E-07  3.16577E-02 4.2E-05  1.10168E-01 5.6E-05  3.20577E-01 4.5E-05  1.34579E+00 3.1E-05  8.88376E+00 0.00030 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.99160E-05 0.00014  1.99052E-05 0.00014  2.14793E-05 0.00147 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.35384E-05 0.00013  2.35257E-05 0.00013  2.53861E-05 0.00146 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.83782E-03 0.00103  1.94925E-04 0.00651  1.08713E-03 0.00266  1.07343E-03 0.00270  3.13198E-03 0.00160  1.01336E-03 0.00289  3.37001E-04 0.00487 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.06794E-01 0.00257  1.24908E-02 4.5E-07  3.16568E-02 4.3E-05  1.10165E-01 5.6E-05  3.20578E-01 4.6E-05  1.34577E+00 3.2E-05  8.88463E+00 0.00029 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.99156E-05 0.00031  1.99043E-05 0.00031  2.15657E-05 0.00342 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.35379E-05 0.00030  2.35246E-05 0.00030  2.54883E-05 0.00341 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.85160E-03 0.00342  2.00895E-04 0.02024  1.10231E-03 0.00832  1.05814E-03 0.00825  3.15176E-03 0.00485  1.00073E-03 0.00884  3.37771E-04 0.01529 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.04077E-01 0.00798  1.24908E-02 1.4E-06  3.16619E-02 0.00012  1.10164E-01 0.00017  3.20565E-01 0.00013  1.34559E+00 9.9E-05  8.87858E+00 0.00082 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.85211E-03 0.00326  2.00562E-04 0.01954  1.09844E-03 0.00797  1.06133E-03 0.00807  3.15310E-03 0.00461  1.00123E-03 0.00866  3.37440E-04 0.01461 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.04272E-01 0.00773  1.24908E-02 1.4E-06  3.16633E-02 0.00012  1.10168E-01 0.00016  3.20569E-01 0.00013  1.34562E+00 9.5E-05  8.88083E+00 0.00081 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -3.44236E+02 0.00342 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.99363E-05 8.8E-05 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.35624E-05 5.6E-05 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.85305E-03 0.00063 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -3.43749E+02 0.00064 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  4.20984E-07 6.8E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.98483E-06 6.0E-05  2.98485E-06 6.0E-05  2.98290E-06 0.00072 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  2.64056E-05 7.8E-05  2.64054E-05 7.9E-05  2.64328E-05 0.00091 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  6.36752E-01 4.7E-05  6.35896E-01 4.7E-05  7.78250E-01 0.00120 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.02639E+01 0.00187 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  2.95043E+01 3.5E-05  3.22182E+01 4.7E-05 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  3])  = '009' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+01  6.25000E-07  1.00000E-11 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  3.98462E+05 0.00109  1.61071E+06 0.00056  3.35180E+06 0.00032  3.65793E+06 0.00024  3.40602E+06 0.00025  3.71468E+06 0.00031  2.52483E+06 0.00031  2.24714E+06 0.00033  1.71537E+06 0.00032  1.39764E+06 0.00037  1.20360E+06 0.00031  1.08386E+06 0.00027  9.99131E+05 0.00035  9.49273E+05 0.00035  9.24319E+05 0.00045  7.97639E+05 0.00025  7.86774E+05 0.00036  7.78820E+05 0.00034  7.63954E+05 0.00034  1.48721E+06 0.00036  1.42740E+06 0.00034  1.02517E+06 0.00032  6.60734E+05 0.00033  7.55167E+05 0.00039  7.07879E+05 0.00044  6.48972E+05 0.00056  1.04760E+06 0.00028  2.42129E+05 0.00068  3.03544E+05 0.00065  2.76318E+05 0.00064  1.59751E+05 0.00092  2.78593E+05 0.00054  1.89401E+05 0.00090  1.59944E+05 0.00081  3.03212E+04 0.00177  3.00858E+04 0.00123  3.07469E+04 0.00151  3.18984E+04 0.00128  3.16472E+04 0.00183  3.09828E+04 0.00191  3.21851E+04 0.00147  3.01690E+04 0.00186  5.69366E+04 0.00125  9.12536E+04 0.00104  1.16137E+05 0.00117  3.05507E+05 0.00056  3.19181E+05 0.00049  3.39327E+05 0.00063  2.20271E+05 0.00077  1.58145E+05 0.00053  1.18989E+05 0.00088  1.36414E+05 0.00075  2.47641E+05 0.00067  3.18735E+05 0.00057  5.79378E+05 0.00044  8.35932E+05 0.00028  1.17000E+06 0.00028  7.14746E+05 0.00029  4.98410E+05 0.00038  3.51067E+05 0.00042  3.10201E+05 0.00048  3.00677E+05 0.00047  2.47130E+05 0.00042  1.64648E+05 0.00056  1.50247E+05 0.00057  1.31831E+05 0.00058  1.09941E+05 0.00057  8.49919E+04 0.00061  5.56214E+04 0.00084  1.91039E+04 0.00132 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.21465E+00 0.00020 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  4.24380E+00 0.00010  7.57164E-01 0.00017 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  5.22161E-01 3.7E-05  1.26332E+00 7.1E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.63336E-03 0.00024  3.76132E-02 7.6E-05 ];
INF_ABS                   (idx, [1:   4]) = [  1.05738E-02 0.00019  9.92629E-02 0.00011 ];
INF_FISS                  (idx, [1:   4]) = [  2.94047E-03 0.00015  6.16498E-02 0.00014 ];
INF_NSF                   (idx, [1:   4]) = [  7.49412E-03 0.00015  1.50222E-01 0.00014 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.54861E+00 1.8E-05  2.43670E+00 3.8E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03653E+02 1.8E-06  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  5.74672E-08 0.00014  2.37253E-06 6.1E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  5.11589E-01 3.7E-05  1.16406E+00 6.8E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.23164E-01 7.5E-05  3.04359E-01 0.00017 ];
INF_SCATT2                (idx, [1:   4]) = [  8.81999E-02 0.00011  7.58511E-02 0.00047 ];
INF_SCATT3                (idx, [1:   4]) = [  7.49391E-03 0.00122  2.30071E-02 0.00130 ];
INF_SCATT4                (idx, [1:   4]) = [ -8.64612E-03 0.00079 -5.38816E-03 0.00493 ];
INF_SCATT5                (idx, [1:   4]) = [  5.20980E-04 0.01140  4.41694E-03 0.00673 ];
INF_SCATT6                (idx, [1:   4]) = [  4.75423E-03 0.00106 -1.15632E-02 0.00172 ];
INF_SCATT7                (idx, [1:   4]) = [  7.26152E-04 0.00958 -2.68116E-04 0.05755 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  5.11634E-01 3.7E-05  1.16406E+00 6.8E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.23165E-01 7.5E-05  3.04359E-01 0.00017 ];
INF_SCATTP2               (idx, [1:   4]) = [  8.82001E-02 0.00011  7.58511E-02 0.00047 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.49394E-03 0.00122  2.30071E-02 0.00130 ];
INF_SCATTP4               (idx, [1:   4]) = [ -8.64613E-03 0.00080 -5.38816E-03 0.00493 ];
INF_SCATTP5               (idx, [1:   4]) = [  5.20976E-04 0.01139  4.41694E-03 0.00673 ];
INF_SCATTP6               (idx, [1:   4]) = [  4.75425E-03 0.00106 -1.15632E-02 0.00172 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.26178E-04 0.00958 -2.68116E-04 0.05755 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.21850E-01 7.7E-05  8.48469E-01 7.5E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.50252E+00 7.7E-05  3.92865E-01 7.5E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.05282E-02 0.00019  9.92629E-02 0.00011 ];
INF_REMXS                 (idx, [1:   4]) = [  2.63526E-02 0.00018  1.00961E-01 0.00025 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148_LAMBDA              (idx, 1)        =  0.00000E+00 ;
PM148M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
PM149_LAMBDA              (idx, 1)        =  0.00000E+00 ;
I135_LAMBDA               (idx, 1)        =  0.00000E+00 ;
XE135_LAMBDA              (idx, 1)        =  0.00000E+00 ;
XE135M_LAMBDA             (idx, 1)        =  0.00000E+00 ;
I135_BR                   (idx, 1)        =  0.00000E+00 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  4.95809E-01 3.5E-05  1.57801E-02 0.00024  1.70699E-03 0.00209  1.16236E+00 6.9E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.18608E-01 7.5E-05  4.55670E-03 0.00047  6.22779E-04 0.00369  3.03736E-01 0.00017 ];
INF_S2                    (idx, [1:   8]) = [  8.95688E-02 0.00011 -1.36888E-03 0.00117  3.45675E-04 0.00464  7.55055E-02 0.00047 ];
INF_S3                    (idx, [1:   8]) = [  9.11046E-03 0.00097 -1.61655E-03 0.00097  1.25946E-04 0.00684  2.28811E-02 0.00131 ];
INF_S4                    (idx, [1:   8]) = [ -8.11267E-03 0.00087 -5.33451E-04 0.00192  8.87399E-07 1.00000 -5.38905E-03 0.00496 ];
INF_S5                    (idx, [1:   8]) = [  5.02824E-04 0.01236  1.81564E-05 0.05925 -5.10685E-05 0.01780  4.46801E-03 0.00667 ];
INF_S6                    (idx, [1:   8]) = [  4.87687E-03 0.00103 -1.22645E-04 0.00730 -6.55156E-05 0.01421 -1.14977E-02 0.00173 ];
INF_S7                    (idx, [1:   8]) = [  8.74814E-04 0.00801 -1.48663E-04 0.00571 -5.86166E-05 0.01252 -2.09500E-04 0.07330 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  4.95854E-01 3.5E-05  1.57801E-02 0.00024  1.70699E-03 0.00209  1.16236E+00 6.9E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.18609E-01 7.6E-05  4.55670E-03 0.00047  6.22779E-04 0.00369  3.03736E-01 0.00017 ];
INF_SP2                   (idx, [1:   8]) = [  8.95689E-02 0.00011 -1.36888E-03 0.00117  3.45675E-04 0.00464  7.55055E-02 0.00047 ];
INF_SP3                   (idx, [1:   8]) = [  9.11050E-03 0.00097 -1.61655E-03 0.00097  1.25946E-04 0.00684  2.28811E-02 0.00131 ];
INF_SP4                   (idx, [1:   8]) = [ -8.11268E-03 0.00087 -5.33451E-04 0.00192  8.87399E-07 1.00000 -5.38905E-03 0.00496 ];
INF_SP5                   (idx, [1:   8]) = [  5.02820E-04 0.01235  1.81564E-05 0.05925 -5.10685E-05 0.01780  4.46801E-03 0.00667 ];
INF_SP6                   (idx, [1:   8]) = [  4.87689E-03 0.00102 -1.22645E-04 0.00730 -6.55156E-05 0.01421 -1.14977E-02 0.00173 ];
INF_SP7                   (idx, [1:   8]) = [  8.74841E-04 0.00801 -1.48663E-04 0.00571 -5.86166E-05 0.01252 -2.09500E-04 0.07330 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  2.56305E-02 8.9E-05  8.48584E-02 0.00035 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.56388E-02 0.00013  8.48059E-02 0.00057 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.56370E-02 0.00011  8.47991E-02 0.00050 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.56156E-02 0.00014  8.49715E-02 0.00053 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.30054E+01 8.9E-05  3.92812E+00 0.00035 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.30011E+01 0.00013  3.93057E+00 0.00057 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.30020E+01 0.00011  3.93088E+00 0.00050 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.30129E+01 0.00014  3.92291E+00 0.00053 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.87332E-03 0.00230  1.98187E-04 0.01400  1.07958E-03 0.00546  1.08326E-03 0.00567  3.14779E-03 0.00341  1.02293E-03 0.00627  3.41565E-04 0.01012 ];
LAMBDA                    (idx, [1:  14]) = [  8.11709E-01 0.00530  1.24908E-02 8.5E-07  3.16537E-02 8.5E-05  1.10165E-01 0.00012  3.20569E-01 9.0E-05  1.34582E+00 6.7E-05  8.89089E+00 0.00062 ];

% Assembly discontinuity factors (order: W-S-E-N / NW-NE-SE-SW):

DF_SURFACE                (idx, [1:  3])  = '009' ;
DF_SURFACE_TYPE           (idx, 1)        = 15 ;
DF_SYM                    (idx, 1)        = 0 ;
DF_N_SURF                 (idx, 1)        = 6 ;
DF_N_CORN                 (idx, 1)        = 4 ;
DF_VOLUME                 (idx, 1)        =  1.59264E+01 ;
DF_SURF_AREA              (idx, [1:  6])  = [ 1.26200E+01  1.26200E+01  1.26200E+01  1.26200E+01  1.59264E+00  1.59264E+00 ];
DF_MID_AREA               (idx, [1:  6])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_CORN_AREA              (idx, [1:  4])  = [ 1.26200E+00  1.26200E+00  1.26200E+00  1.26200E+00 ];
DF_SURF_IN_CURR           (idx, [1:  24]) = [  8.37833E-01 8.0E-05  1.58606E-01 0.00018  8.39329E-01 9.3E-05  1.54050E-01 0.00019  8.39362E-01 0.00010  1.54067E-01 0.00022  8.37889E-01 9.8E-05  1.58591E-01 0.00014  1.06188E-01 0.00021  1.87954E-02 0.00050  1.06239E-01 0.00024  1.87786E-02 0.00056 ];
DF_SURF_OUT_CURR          (idx, [1:  24]) = [  8.44234E-01 8.1E-05  1.53884E-01 0.00018  8.39329E-01 9.3E-05  1.54050E-01 0.00019  8.39362E-01 0.00010  1.54067E-01 0.00022  8.44254E-01 8.4E-05  1.53836E-01 0.00013  1.06188E-01 0.00021  1.87954E-02 0.00050  1.06239E-01 0.00024  1.87786E-02 0.00056 ];
DF_SURF_NET_CURR          (idx, [1:  24]) = [ -6.40110E-03 0.01175  4.72212E-03 0.00421  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -6.36541E-03 0.01043  4.75474E-03 0.00383 -8.39913E-08 0.68542 -1.61059E-08 1.00000 -1.27797E-07 0.38155 -6.38057E-08 0.38166 ];
DF_MID_IN_CURR            (idx, [1:  24]) = [  8.45082E-02 0.00021  1.51847E-02 0.00058  8.45502E-02 0.00024  1.49097E-02 0.00048  8.45370E-02 0.00018  1.49061E-02 0.00048  8.45464E-02 0.00019  1.51875E-02 0.00042  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_OUT_CURR           (idx, [1:  24]) = [  8.50264E-02 0.00021  1.48535E-02 0.00050  8.45502E-02 0.00024  1.49097E-02 0.00048  8.45370E-02 0.00018  1.49061E-02 0.00048  8.50138E-02 0.00017  1.48560E-02 0.00053  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_NET_CURR           (idx, [1:  24]) = [ -5.18289E-04 0.04980  3.31227E-04 0.02712  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -4.67418E-04 0.03892  3.31435E-04 0.03108  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_CORN_IN_CURR           (idx, [1:  16]) = [  8.23202E-02 0.00026  1.71996E-02 0.00057  8.34517E-02 0.00023  1.59944E-02 0.00057  8.34765E-02 0.00033  1.58284E-02 0.00077  8.34017E-02 0.00019  1.60157E-02 0.00050 ];
DF_CORN_OUT_CURR          (idx, [1:  16]) = [  8.38863E-02 0.00026  1.60743E-02 0.00053  8.35731E-02 0.00024  1.58641E-02 0.00063  8.34765E-02 0.00033  1.58284E-02 0.00077  8.35452E-02 0.00025  1.58823E-02 0.00052 ];
DF_CORN_NET_CURR          (idx, [1:  16]) = [ -1.56608E-03 0.01095  1.12535E-03 0.00795 -1.21338E-04 0.13208  1.30332E-04 0.05205  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -1.43554E-04 0.11928  1.33389E-04 0.05372 ];
DF_HET_VOL_FLUX           (idx, [1:   4]) = [  2.66493E-01 7.5E-05  4.75273E-02 0.00014 ];
DF_HET_SURF_FLUX          (idx, [1:  24]) = [  2.66572E-01 6.7E-05  4.95229E-02 0.00017  2.66032E-01 9.3E-05  4.88272E-02 0.00019  2.66042E-01 0.00010  4.88326E-02 0.00022  2.66584E-01 8.2E-05  4.95131E-02 0.00013  2.66697E-01 0.00021  4.72055E-02 0.00050  2.66824E-01 0.00024  4.71633E-02 0.00056 ];
DF_HET_CORN_FLUX          (idx, [1:  16]) = [  2.62476E-01 0.00031  5.31744E-02 0.00062  2.63976E-01 0.00023  5.08884E-02 0.00073  2.64278E-01 0.00037  5.04898E-02 0.00106  2.63922E-01 0.00031  5.10030E-02 0.00071 ];
DF_HOM_VOL_FLUX           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HOM_SURF_FLUX          (idx, [1:  24]) = [  2.66493E-01 7.5E-05  4.75273E-02 0.00014  2.66493E-01 7.5E-05  4.75273E-02 0.00014  2.66493E-01 7.5E-05  4.75273E-02 0.00014  2.66493E-01 7.5E-05  4.75273E-02 0.00014  2.66493E-01 7.5E-05  4.75273E-02 0.00014  2.66493E-01 7.5E-05  4.75273E-02 0.00014 ];
DF_HOM_CORN_FLUX          (idx, [1:  16]) = [  2.66493E-01 7.5E-05  4.75273E-02 0.00014  2.66493E-01 7.5E-05  4.75273E-02 0.00014  2.66493E-01 7.5E-05  4.75273E-02 0.00014  2.66493E-01 7.5E-05  4.75273E-02 0.00014 ];
DF_SURF_DF                (idx, [1:  24]) = [  1.00030E+00 4.4E-05  1.04199E+00 0.00014  9.98270E-01 4.5E-05  1.02735E+00 0.00013  9.98308E-01 5.0E-05  1.02746E+00 0.00017  1.00034E+00 5.5E-05  1.04178E+00 0.00011  1.00077E+00 0.00020  9.93229E-01 0.00046  1.00124E+00 0.00022  9.92341E-01 0.00054 ];
DF_CORN_DF                (idx, [1:  16]) = [  9.84929E-01 0.00028  1.11882E+00 0.00059  9.90556E-01 0.00019  1.07072E+00 0.00076  9.91691E-01 0.00035  1.06233E+00 0.00103  9.90355E-01 0.00027  1.07313E+00 0.00075 ];
DF_SGN_SURF_IN_CURR       (idx, [1:  24]) = [ -3.02307E-03 0.01826  2.63413E-03 0.01089  7.73988E-04 0.07453 -3.38432E-04 0.08374 -7.26482E-04 0.06769  3.05230E-04 0.09628  3.16620E-03 0.01729 -2.66204E-03 0.00818  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_OUT_CURR      (idx, [1:  24]) = [ -5.67462E-05 0.78403  8.08266E-04 0.03214  7.73988E-04 0.07453 -3.38432E-04 0.08374 -7.26482E-04 0.06769  3.05230E-04 0.09628  1.20399E-04 0.51624 -8.12649E-04 0.02106  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_NET_CURR      (idx, [1:  24]) = [ -2.96632E-03 0.02509  1.82587E-03 0.01820  1.02155E-21 0.91961  0.00000E+00 0.0E+00  9.08294E-22 1.00000  0.00000E+00 0.0E+00  3.04580E-03 0.02587 -1.84939E-03 0.01571  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HET_SURF_FLUX      (idx, [1:  24]) = [ -3.42654E-04 0.06471  5.24424E-04 0.01881  1.04808E-04 0.30712 -8.90647E-05 0.12585 -7.83548E-05 0.35350  5.72972E-05 0.22855  4.01463E-04 0.05118 -5.32220E-04 0.01542  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HOM_SURF_FLUX      (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_DF            (idx, [1:  24]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

