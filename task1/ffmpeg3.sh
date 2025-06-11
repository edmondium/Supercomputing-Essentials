#!/bin/sh
#SBATCH --job-name=ffmpeg3
#SBATCH --output=ffmpeg3-%a.txt		# %a nastavek za imena datotek
#SBATCH --time=00:10:00
#SBATCH --array=0-4           		# območje spreminjanja vrednosti
#SBATCH --reservation=fri
srun --ntasks=1 ffmpeg \
-y -i part-$SLURM_ARRAY_TASK_ID.mp4 -codec:a copy -filter:v scale=640:360 \
out-part-$SLURM_ARRAY_TASK_ID.mp4
