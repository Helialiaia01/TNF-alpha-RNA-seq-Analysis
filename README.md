# TNF-α Effects on Brain Endothelial Cells# TNF-α Effects on Brain Endothelial Cells# TNF-α Effects on Brain Endothelial Cells: RNA-seq Analysis



RNA-seq analysis investigating how TNF-α (a pro-inflammatory molecule) affects brain endothelial cells - the cells that form the blood-brain barrier.



## Why This Project?RNA-seq analysis investigating how TNF-α (an inflammatory molecule) affects brain endothelial cells - the cells that form the blood-brain barrier.[![R](https://img.shields.io/badge/R-276DC3?style=flat-square&logo=r&logoColor=white)](https://www.r-project.org/)



I chose this analysis because a family member has Multiple Sclerosis (MS). Understanding how inflammation affects the blood-brain barrier is crucial because in MS, inflammatory molecules like TNF-α break down the protective barrier around the brain, allowing immune cells to attack the myelin coating of nerves.[![Bioconductor](https://img.shields.io/badge/Bioconductor-1f65b7?style=flat-square&logo=r&logoColor=white)](https://bioconductor.org/)



This project helped me learn bioinformatics while studying something personally meaningful.## Why This Project?[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://opensource.org/licenses/MIT)



## What I Did



I analyzed publicly available RNA-seq data to identify which genes change when brain endothelial cells are exposed to TNF-α. The goal was to understand the molecular mechanisms behind inflammation-induced blood-brain barrier dysfunction.I chose this analysis because a family member has Multiple Sclerosis (MS), and understanding how inflammation affects the blood-brain barrier is crucial. In MS, inflammatory molecules like TNF-α break down the barrier that protects the brain, letting immune cells attack the protective myelin coating of nerves.RNA-seq analysis of **brain microvascular endothelial cells** treated with TNF-α, investigating transcriptional responses related to blood-brain barrier dysfunction in neuroinflammatory diseases, particularly **Multiple Sclerosis (MS)**.



**Data Source**: EMBL-EBI Expression Atlas  

**Experiment**: E-MTAB-11468  

**Link**: https://www.ebi.ac.uk/gxa/experiments/E-MTAB-11468## What I Did## Overview



**Important**: The original dataset includes both astrocytes and brain endothelial cells, but my analysis filters to study **only the brain endothelial cells** since they're the ones that form the blood-brain barrier.



## Key FindingsI analyzed publicly available RNA-seq data to see which genes change when brain endothelial cells are exposed to TNF-α. The goal was to understand the molecular mechanisms of how inflammation compromises the blood-brain barrier.This project analyzes differential gene expression in human brain microvascular endothelial cells after TNF-α treatment, focusing on mechanisms relevant to blood-brain barrier (BBB) breakdown in MS and other neuroinflammatory conditions.



- **5,813 genes** significantly changed expression (FDR < 0.05)

- Nearly balanced: 2,853 upregulated, 2,960 downregulated

- Strong inflammatory pathway activation**Data Source**: EMBL-EBI Expression Atlas, experiment E-MTAB-11468  **Data Source**: EMBL-EBI Expression Atlas  

- Results match known TNF-α biology, validating the analysis

https://www.ebi.ac.uk/gxa/experiments/E-MTAB-11468**Experiment ID**: E-MTAB-11468  

## How to Run This Analysis

**URL**: https://www.ebi.ac.uk/gxa/experiments/E-MTAB-11468  

### What You'll Need

- R (version 4.0+)**Important Note**: The original dataset includes both astrocytes and brain endothelial cells, but my analysis specifically filters to study only the brain endothelial cells since they're the ones that form the blood-brain barrier.**Cell Type Analyzed**: Brain microvascular endothelial cells (iPSC-derived)

- RStudio

- ~1 hour to run the full analysis



### Steps## Key Findings### Background



1. **Clone this repository**- **Cell type**: Brain microvascular endothelial cells (BBB-forming cells)

   ```bash

   git clone https://github.com/Helialiaia01/TNF-alpha-RNA-seq-Analysis.git- Found ~5,800 genes that significantly change expression- **Treatment**: TNF-α (pro-inflammatory cytokine)

   cd TNF-alpha-RNA-seq-Analysis

   ```- Almost balanced between genes that increase (2,853) and decrease (2,960)- **Analysis scope**: Endothelial cells only (filtered from multi-cell-type dataset)



2. **Install R packages**- Clear activation of inflammatory pathways- **Clinical relevance**: MS, stroke, neurodegeneration, BBB dysfunction

   ```r

   source("requirements.R")- Results match known TNF-α responses, validating the analysis

   ```

### MS Connection

3. **Get the data**

   - Visit: https://www.ebi.ac.uk/gxa/experiments/E-MTAB-11468/Downloads## How to Run This AnalysisIn Multiple Sclerosis, TNF-α disrupts the blood-brain barrier formed by endothelial cells, allowing immune cell infiltration and myelin damage. This analysis identifies molecular mechanisms of TNF-α-mediated BBB dysfunction, providing insights for developing BBB-protective therapies.

   - Download these two files:

     - `E-MTAB-11468-experiment-design.tsv`

     - `E-MTAB-11468-raw-counts.tsv`

   - Put them in the `data/` folder### Prerequisites## Quick Start



4. **Run the analysis**- R (version 4.0 or higher)

   - Open `TNF_alpha_Brain_Endothelial_Analysis.Rmd` in RStudio

   - Click "Knit" to generate the full report- RStudio### Prerequisites



## What's Inside- R (≥4.0.0)



```### Setup- RStudio (recommended)

├── TNF_alpha_Brain_Endothelial_Analysis.Rmd  # Main analysis (all code + explanations)

├── requirements.R                             # Installs needed R packages

├── LICENSE                                    # MIT license

├── data/                                      # Put downloaded data files here1. Clone this repository:### Installation

├── plots/                                     # Figures will be saved here

└── results/                                   # Analysis results go here```bash```r

```

git clone https://github.com/Helialiaia01/TNF-alpha-RNA-seq-Analysis.git# Install required packages

## Analysis Overview

cd TNF-alpha-RNA-seq-Analysissource("requirements.R")

1. **Data filtering** - Select only brain endothelial cells from the dataset

2. **Quality control** - Verify data quality (49-59M reads per sample, excellent)``````

3. **Differential expression** - Find genes that change with TNF-α (using DESeq2)

4. **Visualization** - Create plots: PCA, volcano plots, heatmaps

5. **Functional analysis** - Understand biological pathways affected

2. Install required R packages:### Run Analysis

## Methods

```r

- **Statistical analysis**: DESeq2 (proper method for RNA-seq count data)

- **Significance cutoff**: FDR < 0.05 (controls false discoveries)source("requirements.R")1. **Clone this repository**

- **Pathway analysis**: Gene Ontology and Reactome databases

- **Data quality**: Very high (Phred scores >30, >99.9% accuracy)```   ```bash



## Why This Matters   git clone https://github.com/Helialiaia01/TNF-alpha-RNA-seq-Analysis.git



Understanding TNF-α effects on brain endothelial cells could help:3. Download the data:   cd TNF-alpha-RNA-seq-Analysis

- Develop drugs to protect the blood-brain barrier in MS

- Identify specific genes/pathways to target therapeutically     - Go to https://www.ebi.ac.uk/gxa/experiments/E-MTAB-11468/Downloads   ```

- Understand how inflammation leads to neurological damage

   - Download `E-MTAB-11468-experiment-design.tsv` and `E-MTAB-11468-raw-counts.tsv`

## Contact

   - Put them in the `data/` folder2. **Download data from Expression Atlas**

**Helia Mohammadi**  

Email: qhellia@gmail.com   



## License4. Open `TNF_alpha_Brain_Endothelial_Analysis.Rmd` in RStudio and click "Knit"   Visit: https://www.ebi.ac.uk/gxa/experiments/E-MTAB-11468/Downloads



MIT License - See [LICENSE](LICENSE) file   



This analysis uses publicly available data from EMBL-EBI Expression Atlas. Please cite the original data source if you use this work.## What's in This Repository   Download and place in `data/` directory:



---   - `E-MTAB-11468-experiment-design.tsv` (experiment metadata)



*This project was completed as part of my bioinformatics coursework (2025)*```   - `E-MTAB-11468-raw-counts.tsv` (gene expression counts)


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