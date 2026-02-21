
#!/bin/bash
#SBATCH --job-name=multN
#SBATCH --output=multN.txt
#SBATCH --time=0:15:00
#SBATCH --ntasks=1
#SBATCH --partition=cpu-preempt

for ((N = 10; N<2000; N*=2))
do
    echo "N: " $N
    time python ~/scratch/scripts/hpc/hw2/quantum-eigen/src/eigen.py $N 'well' 5
    echo "===================================="
done
