#!/bin/bash
#SBATCH --job-name=my_job_name
#SBATCH --partition=all
#SBATCH --ntasks=4
#SBATCH --nodes=1
#SBATCH --mem-per-cpu=100MB
#SBATCH --output=my_job.out
#SBATCH --time=00:01:00
#SBATCH --reservation=fri
srun sleep 30
