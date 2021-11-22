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
cd /home/current/a/rizkiokt/Runs/run_11-14-21_UX_Assembly
/home/current/a/olastres/Serpent/mods/10-11-21/src/sss2_11-9 -omp 44 Serp17x17 > output.txt