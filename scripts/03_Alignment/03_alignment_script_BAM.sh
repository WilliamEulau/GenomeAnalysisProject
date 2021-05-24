#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J alignment
#SBATCH --mail-type=ALL
#SBATCH --mail-user william.eulau.5176@student.uu.se

# Load modules
module load bioinfo-tools
module load gcc star

# Alignment
for i in /home/wieu5176/genome_analysis/genome-analysis-project/01_quality_control/provided_trimmed_rna_data/1P_files/*
do
	file=$i
	fileSuffix=${file%%.trim*}
	filePrefix2=${fileSuffix#*1P_files/}
	echo filePrefix2

	STAR --genomeDir /home/wieu5176/genome_analysis/genome-analysis-project/03_alignment/genome_index --runThreadN 2 --readFilesCommand gunzip -c --readFilesIn /home/wieu5176/genome_analysis/genome-analysis-project/01_quality_control/provided_trimmed_rna_data/1P_files/$filePrefix2.trim_1P.fastq.gz /home/wieu5176/genome_analysis/genome-analysis-project/01_quality_control/provided_trimmed_rna_data/2P_files/$filePrefix2.trim_2P.fastq.gz --outFileNamePrefix /home/wieu5176/genome_analysis/genome-analysis-project/03_alignment/star_alignment_outfile$filePrefix2 --outSAMtype BAM SortedByCoordinate
done
