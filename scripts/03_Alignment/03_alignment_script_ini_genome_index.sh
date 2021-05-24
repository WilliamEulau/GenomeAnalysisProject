#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 12:00:00
#SBATCH -J alignment
#SBATCH --mail-type=ALL
#SBATCH --mail-user william.eulau.5176@student.uu.se

# Load modules
module load bioinfo-tools
module load gcc star

# Alignment
STAR --runThreadN 2 --runMode genomeGenerate --genomeDir /home/wieu5176/genome_analysis/genome-analysis-project/03_alignment/genome_index --genomeFastaFiles /home/wieu5176/genome_analysis/genome-analysis-project/04_annotation/sel4_NW_015503979.fna --genomeChrBinNbits 11 --genomeSAindexNbases 13
