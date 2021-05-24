#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:10:00
#SBATCH -J rna_quality_control
#SBATCH --mail-type=ALL
#SBATCH --mail-user william.eulau.5176@student.uu.se

# Load modules
module load bioinfo-tools
module load FastQC

# Your commands
fastqc -o /home/wieu5176/genome_analysis/01_quality_control/rna_results /home/wieu5176/genome_analysis/01_quality_control/rna_raw/*
