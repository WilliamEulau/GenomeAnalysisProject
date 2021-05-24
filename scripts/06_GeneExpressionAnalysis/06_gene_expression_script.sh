#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J htseq_gene_expression
#SBATCH --mail-type=ALL
#SBATCH --mail-user william.eulau.5176@student.uu.se

# Load modules
module load bioinfo-tools
module load htseq

# HTSeq run
/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count --idattr=gene /home/wieu5176/genome_analysis/genome-analysis-project/03_alignment/star_alignment_outfilesel4_SRR1719014Aligned.out.sam /home/wieu5176/genome_analysis/genome-analysis-project/06_functional_annotation/extracted_4.gff > htseq_outfile_forelimbs_SRR1719014
/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count --idattr=gene /home/wieu5176/genome_analysis/genome-analysis-project/03_alignment/star_alignment_outfilesel4_SRR1719015Aligned.out.sam /home/wieu5176/genome_analysis/genome-analysis-project/06_functional_annotation/extracted_4.gff > htseq_outfile_forelimbs_SRR1719015
/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count --idattr=gene /home/wieu5176/genome_analysis/genome-analysis-project/03_alignment/star_alignment_outfilesel4_SRR1719016Aligned.out.sam /home/wieu5176/genome_analysis/genome-analysis-project/06_functional_annotation/extracted_4.gff > htseq_outfile_hindlimbs_SRR1719016
/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count --idattr=gene /home/wieu5176/genome_analysis/genome-analysis-project/03_alignment/star_alignment_outfilesel4_SRR1719017Aligned.out.sam /home/wieu5176/genome_analysis/genome-analysis-project/06_functional_annotation/extracted_4.gff > htseq_outfile_hindlimbs_SRR1719017

