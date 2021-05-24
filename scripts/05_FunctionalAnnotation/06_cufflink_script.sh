#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J cufflink
#SBATCH --mail-type=ALL
#SBATCH --mail-user william.eulau.5176@student.uu.se

# Load modules
module load bioinfo-tools
module load cufflinks

# HTSeq run
gffread -w gffread_output_transcripts.fa -g /home/wieu5176/genome_analysis/genome-analysis-project/\
06_functional_annotation/sel4_NW_015503979.fna /home/wieu5176/genome_analysis/genome-analysis-project/\
06_functional_annotation/extracted_4.gff 
