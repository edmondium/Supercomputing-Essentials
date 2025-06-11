#!/bin/sh
#SBATCH --job-name=ffmpeg1    # ime posla
#SBATCH --output=ffmpeg1.txt  # datoteka za beleženje izvajanja
#SBATCH --time=00:10:00       # časovna omejitev izvajanja posla ure:minute:sekunde
#SBATCH --reservation=fri     # rezervacija, če jo imamo; drugače vrstico izpustimo

srun ffmpeg -y -i part-0.mp4 -codec:a copy -filter:v scale=640:360 out-part-0.mp4
srun ffmpeg -y -i part-1.mp4 -codec:a copy -filter:v scale=640:360 out-part-1.mp4
srun ffmpeg -y -i part-2.mp4 -codec:a copy -filter:v scale=640:360 out-part-2.mp4
srun ffmpeg -y -i part-3.mp4 -codec:a copy -filter:v scale=640:360 out-part-3.mp4
srun ffmpeg -y -i part-4.mp4 -codec:a copy -filter:v scale=640:360 out-part-4.mp4

