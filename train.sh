#!/bin/bash

#SBATCH -A dubo          
#SBATCH -J  Liu_work  
#SBATCH -p gpu
#SBATCH --cpus-per-task=4
#SBATCH --gres=gpu:2
#SBATCH -o out_scream_train.out
#SBATCH -t 5-1:30:00


python -m torch.distributed.launch --master_port 59510 --nproc_per_node=2 train.py $1
