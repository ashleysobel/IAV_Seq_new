# Description
# This script contains code that summarizes the FluPipeline output for input into the Hensley Lab Sample Tracker on Google sheets. It creates a list that contains the following information: 1) Sample number, 2) Run ID, 3) Run date, 4) Sample ID, 5) Operator (who loaded the machine), 6) kit type, 7) Date the pipeline was run, 8) Pipeline version, 9) Pass QC, 10) Sample strain, 11) Sample clade
# Author: Name
# Version: 2021-09-08

# Packages
library(tidyverse)
library(dplyr)
df <-read.csv("Hensley_NGS_SampleTracking.csv",col_types = c(character,integer,date,character,factor,factor,date,factor,logical,factor,factor))


# Parameters
# Import prior sample tracking sheet
df <-read.csv("Hensley_NGS_SampleTracking.csv")
df <- as_tibble(df)
df$run_date <- as.Date(df$run_date,format="%m/%d/%y")
df$sample_operator <- as.factor(df$sample_operator)
df$kit_type <- as.factor(df$kit_type)
df$date_pipeline <- as.Date(df$date_pipeline,format="%m/%d/%y")
df$pipeline_iteration <- as.factor(df$pipeline_iteration)
df$pass_qc <- as.logical(df$pass_qc)
df$sample_strain <- as.factor(df$sample_strain)


# Determine samples to add to the tracking sheet
path_location <- "/Volumes/Hensley/Lab Members Data/Finalized_IAV_Sequence_Data/IAV_Run_050422/050422-Pipeline/sampleOutputs"
sample_names <- list.files(path = path_location)
#===============================================================================

# Code
for (name_tmp in 1:length(sample_names)) {
  new_SampleName <- sample_names[i]
  new_RunID <- nrow(df)+1
  new_SampleOperator <- "Lydia"
  new_KitType <- df$kit_type[nrow(df)]
}