#!/bin/sh
#SBATCH --job-name=ffmpeg2
#SBATCH --output=ffmpeg2.txt
#SBATCH --time=00:10:00
#SBATCH --ntasks=5            # število nalog v poslu, ki se izvajajo hkrati

srun --ntasks=1 --overlap ffmpeg -y -i part-0.mp4 -codec:a copy -filter:v scale=640:360 out-part-0.mp4 &
srun --ntasks=1 --overlap ffmpeg -y -i part-1.mp4 -codec:a copy -filter:v scale=640:360 out-part-1.mp4 &
srun --ntasks=1 --overlap ffmpeg -y -i part-2.mp4 -codec:a copy -filter:v scale=640:360 out-part-2.mp4 &
srun --ntasks=1 --overlap ffmpeg -y -i part-3.mp4 -codec:a copy -filter:v scale=640:360 out-part-3.mp4 &
srun --ntasks=1 --overlap ffmpeg -y -i part-4.mp4 -codec:a copy -filter:v scale=640:360 out-part-4.mp4 &

wait
