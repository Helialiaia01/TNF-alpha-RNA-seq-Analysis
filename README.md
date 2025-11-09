# TNF-α Effects on Brain Endothelial Cells: RNA-seq Analysis

[![R](https://img.shields.io/badge/R-276DC3?style=flat-square&logo=r&logoColor=white)](https://www.r-project.org/)
[![Bioconductor](https://img.shields.io/badge/Bioconductor-1f65b7?style=flat-square&logo=r&logoColor=white)](https://bioconductor.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://opensource.org/licenses/MIT)

RNA-seq analysis of brain endothelial cells treated with TNF-α, investigating transcriptional responses related to neuroinflammation and blood-brain barrier function.

## Overview

This project analyzes differential gene expression in human brain microvascular endothelial cells after TNF-α treatment. The analysis uses publicly available data from Expression Atlas (experiment E-MTAB-11468).

### Background
- **Cell type**: iPSC-derived brain microvascular endothelial cells
- **Treatment**: TNF-α (tumor necrosis factor alpha)
- **Sample size**: 24 samples (12 control, 12 treated)
- **Relevance**: Neuroinflammation, stroke, neurodegeneration

### Key Results
- **5,813 differentially expressed genes** (FDR < 0.05)
- **2,853 upregulated**, 2,960 downregulated
- Strong inflammatory response signature
- High-quality data (49-59M reads/sample, Phred >30)

## Quick Start

### Prerequisites
- R (≥4.0.0)
- RStudio (recommended)

### Installation
```r
# Install required packages
source("requirements.R")
```

### Run Analysis
1. Clone this repository
   ```bash
   git clone https://github.com/Helialiaia01/TNF-alpha-RNA-seq-Analysis.git
   cd TNF-alpha-RNA-seq-Analysis
   ```

2. Open in RStudio and knit `TNF_alpha_Brain_Endothelial_Analysis.Rmd`

## Repository Structure

```
TNF-alpha-RNA-seq-Analysis/
├── README.md
├── TNF_alpha_Brain_Endothelial_Analysis.Rmd    # Main analysis
├── requirements.R                               # Package dependencies
├── LICENSE
├── data/
│   ├── E-MTAB-11468-experiment-design.tsv
│   └── E-MTAB-11468-raw-counts.tsv
├── plots/                                       # Generated figures
└── results/                                     # Analysis outputs
```

## Analysis Pipeline

1. **Quality Control** - FastQC/MultiQC metrics
2. **Differential Expression** - DESeq2 analysis
3. **Visualization** - PCA, MA plots, volcano plots, heatmaps
4. **Functional Enrichment** - GO, Reactome pathways, GSEA
5. **Validation** - Cross-reference with known TNF-α responses

## Results

### Differential Expression
| Metric | Value |
|--------|-------|
| Total DEGs (FDR < 0.05) | 5,813 |
| Upregulated | 2,853 |
| Downregulated | 2,960 |
| Strong changes (\|log2FC\| > 1) | 3,247 |

### Data Quality
- Read depth: 49-59M reads/sample
- Quality scores: Phred >30 (>99.9% accuracy)
- Genes analyzed: 49,225 (after filtering)

## Methods

- **Statistical framework**: DESeq2 with negative binomial GLM
- **Multiple testing correction**: Benjamini-Hochberg FDR
- **Visualization**: ggplot2, pheatmap
- **Functional analysis**: clusterProfiler, ReactomePA

## Citation

If you use this analysis:

```bibtex
@misc{mohammadi2025tnf,
  title={TNF-α Effects on Brain Endothelial Cells: RNA-seq Analysis},
  author={Mohammadi, Helia},
  year={2025},
  url={https://github.com/Helialiaia01/TNF-alpha-RNA-seq-Analysis}
}
```

## License

MIT License - see [LICENSE](LICENSE) file

## Contact

**Helia Mohammadi**  
Email: qhellia@gmail.com

---

*This project demonstrates RNA-seq analysis workflows for studying neuroinflammation and blood-brain barrier responses.*