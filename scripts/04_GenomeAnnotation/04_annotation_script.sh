#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user william.eulau.5176@student.uu.se

# Load modules
module load bioinfo-tools
module load braker/2.1.1_Perl5.24.1
module load augustus/3.2.3_Perl5.24.1
module load bamtools/2.5.1
module load blast/2.9.0+
module load GenomeThreader/1.7.0
module load samtools/1.8
module load GeneMark/4.33-es_Perl5.24.1

module load cdbfasta
module load diamond
module load perl_modules
module load biopython

# Annotation
chmod a+w -R /home/wieu5176/augustus_config/species/

braker.pl --species=yourSpecies --genome=/home/wieu5176/genome_analysis/genome-analysis-project/04_annotation/sel4_NW_015503979.fna --bam=/home/wieu5176/genome_analysis/genome-analysis-project/03_alignment/star_alignment_outfileAligned.sortedByCoord.out.bam --softmasking --UTR=on --AUGUSTUS_CONFIG_PATH=/home/wieu5176/augustus_config --AUGUSTUS_BIN_PATH=/sw/bioinfo/augustus/3.4.0/snowy/bin --AUGUSTUS_SCRIPTS_PATH=/sw/bioinfo/augustus/3.4.0/snowy/scripts --GENEMARK_PATH=/sw/bioinfo/GeneMark/4.33-es/snowy


