# TNF-α Effects on Brain Endothelial Cells# TNF-α Effects on Brain Endothelial Cells: RNA-seq Analysis



RNA-seq analysis investigating how TNF-α (an inflammatory molecule) affects brain endothelial cells - the cells that form the blood-brain barrier.[![R](https://img.shields.io/badge/R-276DC3?style=flat-square&logo=r&logoColor=white)](https://www.r-project.org/)

[![Bioconductor](https://img.shields.io/badge/Bioconductor-1f65b7?style=flat-square&logo=r&logoColor=white)](https://bioconductor.org/)

## Why This Project?[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://opensource.org/licenses/MIT)



I chose this analysis because a family member has Multiple Sclerosis (MS), and understanding how inflammation affects the blood-brain barrier is crucial. In MS, inflammatory molecules like TNF-α break down the barrier that protects the brain, letting immune cells attack the protective myelin coating of nerves.RNA-seq analysis of **brain microvascular endothelial cells** treated with TNF-α, investigating transcriptional responses related to blood-brain barrier dysfunction in neuroinflammatory diseases, particularly **Multiple Sclerosis (MS)**.



## What I Did## Overview



I analyzed publicly available RNA-seq data to see which genes change when brain endothelial cells are exposed to TNF-α. The goal was to understand the molecular mechanisms of how inflammation compromises the blood-brain barrier.This project analyzes differential gene expression in human brain microvascular endothelial cells after TNF-α treatment, focusing on mechanisms relevant to blood-brain barrier (BBB) breakdown in MS and other neuroinflammatory conditions.



**Data Source**: EMBL-EBI Expression Atlas, experiment E-MTAB-11468  **Data Source**: EMBL-EBI Expression Atlas  

https://www.ebi.ac.uk/gxa/experiments/E-MTAB-11468**Experiment ID**: E-MTAB-11468  

**URL**: https://www.ebi.ac.uk/gxa/experiments/E-MTAB-11468  

**Important Note**: The original dataset includes both astrocytes and brain endothelial cells, but my analysis specifically filters to study only the brain endothelial cells since they're the ones that form the blood-brain barrier.**Cell Type Analyzed**: Brain microvascular endothelial cells (iPSC-derived)



## Key Findings### Background

- **Cell type**: Brain microvascular endothelial cells (BBB-forming cells)

- Found ~5,800 genes that significantly change expression- **Treatment**: TNF-α (pro-inflammatory cytokine)

- Almost balanced between genes that increase (2,853) and decrease (2,960)- **Analysis scope**: Endothelial cells only (filtered from multi-cell-type dataset)

- Clear activation of inflammatory pathways- **Clinical relevance**: MS, stroke, neurodegeneration, BBB dysfunction

- Results match known TNF-α responses, validating the analysis

### MS Connection

## How to Run This AnalysisIn Multiple Sclerosis, TNF-α disrupts the blood-brain barrier formed by endothelial cells, allowing immune cell infiltration and myelin damage. This analysis identifies molecular mechanisms of TNF-α-mediated BBB dysfunction, providing insights for developing BBB-protective therapies.



### Prerequisites## Quick Start

- R (version 4.0 or higher)

- RStudio### Prerequisites

- R (≥4.0.0)

### Setup- RStudio (recommended)



1. Clone this repository:### Installation

```bash```r

git clone https://github.com/Helialiaia01/TNF-alpha-RNA-seq-Analysis.git# Install required packages

cd TNF-alpha-RNA-seq-Analysissource("requirements.R")

``````



2. Install required R packages:### Run Analysis

```r

source("requirements.R")1. **Clone this repository**

```   ```bash

   git clone https://github.com/Helialiaia01/TNF-alpha-RNA-seq-Analysis.git

3. Download the data:   cd TNF-alpha-RNA-seq-Analysis

   - Go to https://www.ebi.ac.uk/gxa/experiments/E-MTAB-11468/Downloads   ```

   - Download `E-MTAB-11468-experiment-design.tsv` and `E-MTAB-11468-raw-counts.tsv`

   - Put them in the `data/` folder2. **Download data from Expression Atlas**

   

4. Open `TNF_alpha_Brain_Endothelial_Analysis.Rmd` in RStudio and click "Knit"   Visit: https://www.ebi.ac.uk/gxa/experiments/E-MTAB-11468/Downloads

   

## What's in This Repository   Download and place in `data/` directory:

   - `E-MTAB-11468-experiment-design.tsv` (experiment metadata)

```   - `E-MTAB-11468-raw-counts.tsv` (gene expression counts)

├── TNF_alpha_Brain_Endothelial_Analysis.Rmd  # Main analysis file   

├── requirements.R                             # Installs needed packages   Or use the automated download in `data/README.md`

├── LICENSE                                    # MIT license

├── data/                                      # Put downloaded data here3. **Open in RStudio and knit** `TNF_alpha_Brain_Endothelial_Analysis.Rmd`

├── plots/                                     # Generated figures go here

└── results/                                   # Analysis results go here## Repository Structure

```

```

## Analysis StepsTNF-alpha-RNA-seq-Analysis/

├── README.md

1. **Load and filter data** - Keep only brain endothelial cells├── TNF_alpha_Brain_Endothelial_Analysis.Rmd    # Main analysis

2. **Quality control** - Check data quality metrics├── requirements.R                               # Package dependencies

3. **Differential expression** - Find genes that change with TNF-α treatment (using DESeq2)├── LICENSE

4. **Visualization** - Create plots to understand the patterns├── data/

5. **Functional analysis** - Figure out what biological processes are affected│   ├── E-MTAB-11468-experiment-design.tsv

│   └── E-MTAB-11468-raw-counts.tsv

## Methods Summary├── plots/                                       # Generated figures

└── results/                                     # Analysis outputs

- **Statistics**: DESeq2 for differential expression (handles RNA-seq count data properly)```

- **Significance threshold**: FDR < 0.05 (controls for multiple testing)

- **Functional enrichment**: Gene Ontology and pathway analysis to understand biological meaning## Analysis Pipeline

- **Quality**: High-quality data with >49M reads per sample

1. **Quality Control** - FastQC/MultiQC metrics

## Clinical Relevance2. **Differential Expression** - DESeq2 analysis

3. **Visualization** - PCA, MA plots, volcano plots, heatmaps

Understanding how TNF-α affects brain endothelial cells could help develop therapies to:4. **Functional Enrichment** - GO, Reactome pathways, GSEA

- Protect the blood-brain barrier in MS5. **Validation** - Cross-reference with known TNF-α responses

- Prevent immune cell infiltration into the brain

- Target specific genes or pathways for treatment## Results



## Contact### Differential Expression

| Metric | Value |

**Helia Mohammadi**  |--------|-------|

Email: qhellia@gmail.com| Total DEGs (FDR < 0.05) | 5,813 |

| Upregulated | 2,853 |

## License| Downregulated | 2,960 |

| Strong changes (\|log2FC\| > 1) | 3,247 |

MIT License - See LICENSE file for details

### Data Quality

---- Read depth: 49-59M reads/sample

- Quality scores: Phred >30 (>99.9% accuracy)

This project was completed as part of my bioinformatics coursework, with the goal of learning RNA-seq analysis while studying something personally meaningful.- Genes analyzed: 49,225 (after filtering)


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