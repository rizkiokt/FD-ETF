#!/bin/sh

#SBATCH -A yunlin 
#SBATCH -N 1
#SBATCH -n 44
#SBATCH --exclusive
#SBATCH -t 40:00:00
#SBATCH --job-name=serp
#

# Loads modules

# Runs
cd /home/current/a/rizkiokt/Runs/run_10-14-21_UX_Assembly
/home/current/a/rizkiokt/bin/sss2_Aug19th -omp 44 Serp17x17 > output.txt