#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 6
#SBATCH -t 24:00:00
#SBATCH -J trinity_rna_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user william.eulau.5176@student.uu.se

# Load modules
module load bioinfo-tools
module load trinity

# Assembly
Trinity --seqType fq --max_memory 50G --left /home/wieu5176/genome_analysis/genome-analysis-project/01_quality_control/rna_raw_trimmed_data/sel4_SRR1719266.trimm_1P.fastq.gz,/home/wieu5176/genome_analysis/genome-analysis-project/01_quality_control/rna_raw_trimmed_data/sel4_SRR1719266.trimm_1U.fastq.gz --right /home/wieu5176/genome_analysis/genome-analysis-project/01_quality_control/rna_raw_trimmed_data/sel4_SRR1719266.trimm_2P.fastq.gz,/home/wieu5176/genome_analysis/genome-analysis-project/01_quality_control/rna_raw_trimmed_data/sel4_SRR1719266.trimm_2U.fastq.gz --CPU 6 --output /home/wieu5176/genome_analysis/genome-analysis-project/02_assembly/data_assembled/trinity_rna_assembled


