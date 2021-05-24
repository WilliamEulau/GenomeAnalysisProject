#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:30:00
#SBATCH -J rna_trimming
#SBATCH --mail-type=ALL
#SBATCH --mail-user william.eulau.5176@student.uu.se

# Load modules
module load bioinfo-tools
module load trimmomatic

# Trimming
cd /home/wieu5176/genome_analysis/genome-analysis-project/01_quality_control/rna_raw_trimmed_data

java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE /home/wieu5176/genome_analysis/genome-analysis-project/01_quality_control/rna_raw/sel4_SRR1719266.1.fastq.gz /home/wieu5176/genome_analysis/genome-analysis-project/01_quality_control/rna_raw/sel4_SRR1719266.2.fastq.gz sel4_SRR1719266.trimm_1P.fastq.gz sel4_SRR1719266.trimm_1U.fastq.gz sel4_SRR1719266.trimm_2P.fastq.gz sel4_SRR1719266.trimm_2U.fastq.gz ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/rackham/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:17 MINLEN:36

