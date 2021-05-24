# Code written by William Eulau, 24-05-2021

# Loading required Libraries
library(pheatmap)
library(DESeq2)

HTSeqDirectory <- "C:/Users/willi/Documents/UU/Genomanalys/Project/htseq_output_files/"

HTSeqFiles <- list.files(HTSeqDirectory)
conditions <- c("Forelimb", "Forelimb", "Hindlimb", "Hindlimb") 

sampleTable <- data.frame(sampleName = HTSeqFiles, fileName = HTSeqFiles, condition = conditions)
sampleTable$conditions <- factor(sampleTable$condition)
  
# Creating Data Structure
ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable, directory = HTSeqDirectory, design = ~ condition)

# Preform Analysis
dds <- DESeq(ddsHTSeq)
res <- results(dds)
res

# Only Include pvalues above 5% (Statistically significant)
res_sign_pval <- subset(res,pvalue<0.05)

dds_log <- rlog(dds)
pheatmap(assay(dds_log[res_sign_pval@rownames], scale = 'row'))

# Preform A Principal Component Analysis (PCA)
vsd <- varianceStabilizingTransformation(dds, blind=FALSE)
plotPCA(vsd)