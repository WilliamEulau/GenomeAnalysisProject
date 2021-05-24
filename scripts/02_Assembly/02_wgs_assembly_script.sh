#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 36:00:00
#SBATCH -J wgs_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user william.eulau.5176@student.uu.se

# Load modules
module load bioinfo-tools
module load soapdenovo

# Assembly
/sw/apps/bioinfo/SOAPdenovo/2.04-r240/rackham/bin/SOAPdenovo-127mer all -s config_file -K 49 -R -o graph_prefix 1>ass.log 2>ass.er
