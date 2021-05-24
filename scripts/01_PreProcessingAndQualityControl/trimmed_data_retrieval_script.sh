#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:30:00
#SBATCH -J data_transfer
#SBATCH --mail-type=ALL
#SBATCH --mail-user william.eulau.5176@student.uu.se

for i in /proj/g2021012/2_Eckalbar_2016/sel4/rna_seq_data/trimmed/*
do
	ln -s $i /home/wieu5176/genome_analysis/genome-analysis-project/01_quality_control/provided_trimmed_rna_data
done
