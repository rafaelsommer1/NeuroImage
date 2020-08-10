args <- commandArgs(trailingOnly = TRUE)
library(dplyr)
library(tidyr)

# Read
aseg <- read.table(args[1], quote="\"")
l.aparc <- read.table(args[2], quote="\"")
r.aparc <- read.table(args[3], quote="\"")     

# Subcortical
aseg <- aseg %>%
  select(V5,V4)
colnames(aseg) <- c("Estrutura","Volume_mm3")


#Left cortex
l.aparc <- select(l.aparc, V1,V4,V5)
colnames(l.aparc) <- c("estrutura","volume_cinzenta","espessura_cortical_mm")

# Right cortex
r.aparc <- select(r.aparc, V1,V4,V5)
colnames(r.aparc) <- c("estrutura","volume_cinzenta","espessura_cortical_mm")

write.csv(aseg, file = "VolumeSubcortical.csv")
write.csv(r.aparc, file = "DadosCorticaisHD.csv")
write.csv(l.aparc, file = "DadosCorticaisHE.csv")
