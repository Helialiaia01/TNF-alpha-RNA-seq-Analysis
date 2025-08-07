# R Package Dependencies for TNF-α RNA-seq Analysis
# Install and load all required packages for the analysis

# Function to check and install packages
install_if_missing <- function(pkg) {
  if (!require(pkg, character.only = TRUE)) {
    if (pkg %in% c("DESeq2", "clusterProfiler", "ReactomePA", "enrichplot", 
                   "org.Hs.eg.db", "msigdbr")) {
      # Bioconductor packages
      if (!require("BiocManager", quietly = TRUE))
        install.packages("BiocManager")
      BiocManager::install(pkg)
    } else {
      # CRAN packages
      install.packages(pkg)
    }
    library(pkg, character.only = TRUE)
  }
}

# Core analysis packages
cat("Installing core analysis packages...\n")

# Differential expression analysis
install_if_missing("DESeq2")        # Main DESeq2 package for differential expression

# Data manipulation and visualization
install_if_missing("dplyr")         # Data manipulation
install_if_missing("ggplot2")       # Data visualization
install_if_missing("pheatmap")      # Heatmaps
install_if_missing("RColorBrewer")  # Color palettes
install_if_missing("gridExtra")     # Multi-panel plots
install_if_missing("ggrepel")       # Better plot labels

# Functional enrichment analysis
cat("Installing functional analysis packages...\n")
install_if_missing("clusterProfiler") # GO and pathway enrichment
install_if_missing("ReactomePA")       # Reactome pathway analysis
install_if_missing("enrichplot")      # Enrichment visualization
install_if_missing("msigdbr")          # MSigDB gene sets for GSEA

# Annotation databases
cat("Installing annotation packages...\n")
install_if_missing("org.Hs.eg.db")    # Human gene annotation

# Additional utilities
install_if_missing("knitr")         # R Markdown knitting
install_if_missing("rmarkdown")     # R Markdown processing

cat("\n=== INSTALLATION COMPLETE ===\n")
cat("All required packages have been installed successfully!\n")

# Load all packages
cat("\nLoading all packages...\n")
library(DESeq2)
library(ggplot2)
library(pheatmap)
library(dplyr)
library(RColorBrewer)
library(gridExtra)
library(ggrepel)
library(clusterProfiler)
library(ReactomePA)
library(enrichplot)
library(msigdbr)
library(org.Hs.eg.db)

cat("All packages loaded successfully!\n")

# Print session information for reproducibility
cat("\n=== SESSION INFORMATION ===\n")
sessionInfo()

# Package versions for reproducibility
cat("\n=== KEY PACKAGE VERSIONS ===\n")
cat("DESeq2 version:", as.character(packageVersion("DESeq2")), "\n")
cat("ggplot2 version:", as.character(packageVersion("ggplot2")), "\n")
cat("clusterProfiler version:", as.character(packageVersion("clusterProfiler")), "\n")
cat("dplyr version:", as.character(packageVersion("dplyr")), "\n")

cat("\n=== SETUP COMPLETE ===\n")
cat("Your environment is ready for RNA-seq analysis!\n")
cat("You can now run the main analysis file: TNF_alpha_Brain_Endothelial_Analysis.Rmd\n")
