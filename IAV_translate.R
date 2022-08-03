# Description
# This script contains code that translates influenza virus nucleotide to amino acid sequence 
# Author: Ashley Sobel Leonard
# Version: 2022-08-02

# Packages
# library(tidyverse)
# library(dplyr)
# library(Biostrings)
library(read.gb)
library(seqinr)

# Load reference sequence
H1N1pdm_HA_ref <- read.gb('H1N1pdm_HA_ref.gb')
H1N1pdm_HA_nt_full <- toString(H1N1pdm_HA_ref$CY266191$ORIGIN)

H1N1pdm_HA1.loci <- c(65,1045)
H1N1pdm_HA1.seq <- substr(H1N1pdm_HA_nt_full,H1N1pdm_HA1.loci[1],H1N1pdm_HA1.loci[2])
tmp <- strsplit(H1N1pdm_HA1.seq,"")
tmp2 <- translate(tmp[[1]])
H1N1pdm_HA1.aa_seq <- paste(tmp2,collapse="")
rm(tmp, tmp2)

H1N1pdm_HA2.loci <- c(1046,1711)
H1N1pdm_HA2.seq <- substr(H1N1pdm_HA_nt_full,H1N1pdm_HA2.loci[1],H1N1pdm_HA2.loci[2])
tmp <- strsplit(H1N1pdm_HA2.seq,"")
tmp2 <- translate(tmp[[1]])
H1N1pdm_HA2.aa_seq <- paste(tmp2,collapse="")


seq_tmp <- read.fasta(file="CHOA024_HA.fasta")
CHOA024_HA_nt_full <- paste(seq_tmp[[1]],collapse="")
CHOA024_HA1.seq <- substr(CHOA024_HA_nt_full,H1N1pdm_HA1.loci[1],H1N1pdm_HA1.loci[2])
tmp <- strsplit(CHOA024_HA1.seq,"")
tmp2 <- translate(tmp[[1]])
CHOA024_HA1.aa_seq <- paste(tmp2,collapse="")

seq_tmp.HA1_seq_nt <- substr(seq_tmp.nt$CHOA024_HA,H1N1pdm_HA1.loci[1],H1N1pdm_HA1.loci[2])
seq_tmp.HA1_seq_aa <- translate(seq_tmp.HA1_seq_nt)
seq_tmp.HA2_seq_nt <- substr(seq_tmp.nt$CHOA024_HA,H1N1pdm_HA2.loci[1],H1N1pdm_HA2.loci[2])
seq_tmp.HA2_seq_aa <- translate(seq_tmp.HA2_seq_nt)
