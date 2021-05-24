#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:20:00
#SBATCH -J wgs_quality_control
#SBATCH --mail-type=ALL
#SBATCH --mail-user william.eulau.5176@student.uu.se

# Load modules
module load bioinfo-tools
module load FastQC

# Your commands
fastqc -o /home/wieu5176/genome_analysis/genome-analysis-project/01_quality_control/wgs_data_quality_control_results /home/wieu5176/genome_analysis/genome-analysis-project/01_quality_control/wgs_data/*
