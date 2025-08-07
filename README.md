# TNF-α Effects on Brain Endothelial Cells: RNA-seq Analysis

[![R](https://img.shields.io/badge/R-276DC3?style=flat-square&logo=r&logoColor=white)](https://www.r-project.org/)
[![Bioconductor](https://img.shields.io/badge/Bioconductor-1f65b7?style=flat-square&logo=r&logoColor=white)](https://bioconductor.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://opensource.org/licenses/MIT)

A comprehensive RNA-seq analysis investigating the transcriptional response of brain endothelial cells to TNF-α treatment. This is an educational project demonstrating bioinformatics workflows and statistical analysis techniques.

## Project Overview

This project presents a differential expression analysis of human brain microvascular endothelial cells treated with TNF-α (tumor necrosis factor alpha), a key pro-inflammatory cytokine involved in neuroinflammation and blood-brain barrier dysfunction.

**Note**: This is an educational project for learning bioinformatics analysis techniques. Some methodological limitations exist (see Limitations section below).

### Scientific Background
- **Research Focus**: TNF-α effects on brain endothelial cells and blood-brain barrier function
- **Clinical Relevance**: Neuroinflammation, stroke, Alzheimer's disease, multiple sclerosis
- **Data Source**: Expression Atlas experiment E-MTAB-11468 ([EMBL-EBI](https://www.ebi.ac.uk/gxa/experiments/E-MTAB-11468))
- **Cell Type**: iPSC-derived brain microvascular endothelial cells
- **Experimental Design**: Control (n=12) vs TNF-α treated (n=12) samples

### Key Findings
- **5,813 differentially expressed genes** (padj < 0.05)
- **Balanced regulation**: 2,853 upregulated, 2,960 downregulated genes
- **Strong inflammatory response**: Multiple immune pathways activated
- **High data quality**: 49-59M reads/sample, Phred >30
- **Biological validation**: Consistent with known TNF-α biology

### Limitations
- **Data interpretation**: Some column misinterpretations occurred during initial analysis
- **Clustering methods**: Clustering approach may not be optimal for this dataset
- **Educational purpose**: This analysis is primarily for learning, not research publication
- **Methodological refinements**: Several analysis steps could be improved with additional validation

## Quick Start

### Prerequisites
- R (≥4.0.0)
- RStudio (recommended)
- Bioconductor packages (see requirements.R)

### **Installation & Setup**
```r
# Install required packages
source("requirements.R")

# Open the main analysis file
# TNF_alpha_Brain_Endothelial_Analysis.Rmd
```

### **Running the Analysis**
1. **Clone this repository**
   ```bash
   git clone https://github.com/Helialiaia01/TNF-alpha-RNA-seq-Analysis.git
   cd TNF-alpha-RNA-seq-Analysis
   ```

2. **Open in RStudio**
   ```r
   # Open the main analysis file
   file.edit("TNF_alpha_Brain_Endothelial_Analysis.Rmd")
   ```

3. **Run the complete analysis**
   - Click "Knit" in RStudio, or
   - Run code chunks sequentially

## 📁 **Repository Structure**

```
TNF-alpha-RNA-seq-Analysis/
├── 📄 README.md                                    # This file
├── 📄 TNF_alpha_Brain_Endothelial_Analysis.Rmd     # Main analysis (R Markdown)
├── 📄 requirements.R                               # R package dependencies
├── 📄 LICENSE                                      # MIT License
├── 📂 data/                                        # Raw data files
│   ├── E-MTAB-11468-experiment-design.tsv         # Sample metadata
│   └── E-MTAB-11468-raw-counts.tsv                # Gene expression counts
├── 📂 plots/                                       # Generated visualizations
│   ├── pca_plot.png                               # Sample clustering
│   ├── volcano_plot.png                           # Statistical significance
│   ├── go_up_bp_dotplot.png                       # GO enrichment
│   └── gsea_dotplot.png                           # GSEA analysis
├── 📂 results/                                     # Analysis outputs
│   └── differential_expression_results.txt        # Complete DEG results
└── 📂 docs/                                        # Additional documentation
    └── methodology.md                              # Detailed methods
```

## 🔬 **Analysis Pipeline**

### **1. Quality Control Assessment**
- FastQC/MultiQC quality metrics evaluation
- Comprehensive data quality interpretation
- Sample quality validation and filtering

### **2. Differential Expression Analysis**
- **Statistical Framework**: DESeq2 with negative binomial modeling
- **Multiple Testing**: Benjamini-Hochberg FDR correction
- **Filtering**: Low-count gene removal (sum > 1)
- **Normalization**: Size factor normalization

### **3. Exploratory Data Analysis** 
- **PCA Analysis**: Sample clustering and batch effect assessment
- **MA Plot**: Expression level vs fold change relationship
- **Volcano Plot**: Statistical vs biological significance
- **Heatmaps**: Top differentially expressed genes

### **4. Functional Enrichment Analysis**
- **Gene Ontology (GO)**: Biological Process categories
- **Reactome Pathways**: Cellular pathway enrichment
- **GSEA Analysis**: HALLMARK gene sets from MSigDB
- **Visualization**: Professional dot plots and enrichment plots

### **5. Validation & Interpretation**
- Expression Atlas cross-validation
- Known inflammatory gene analysis
- Biological significance assessment

## 📈 **Results Summary**

### **Differential Expression Statistics**
| Metric | Count | Interpretation |
|--------|--------|----------------|
| **Total DEGs (padj < 0.05)** | 5,813 | Strong transcriptional response |
| **Upregulated genes** | 2,853 | TNF-α activates gene expression |
| **Downregulated genes** | 2,960 | Balanced regulatory response |
| **Strong changes (\|log2FC\| > 1)** | 3,247 | Biologically significant effects |

### **Quality Metrics**
- **Read Depth**: 49-59 million reads per sample
- **Sequence Quality**: Phred scores >30 (>99.9% accuracy)
- **Gene Coverage**: 49,225 genes analyzed (after filtering)
- **Technical Quality**: Standard RNA-seq data quality

## 📊 **Key Visualizations**

1. **PCA Plot**: Clear separation between control and TNF-α treated samples
2. **Volcano Plot**: 5,813 significant genes with strong effect sizes
3. **GO Enrichment**: Multiple inflammatory pathways activated
4. **GSEA Analysis**: TNF-α signaling and inflammatory response pathways
5. **Heatmap**: Top 20 most significantly changed genes
6. **Summary Statistics**: Professional data visualization

## 🧬 **Biological Significance**

### **TNF-α Response Pathways**
- **Immune System Activation**: NF-κB signaling cascade
- **Inflammatory Response**: Cytokine production and signaling
- **Endothelial Function**: Barrier integrity and permeability
- **Vascular Biology**: Endothelial-immune cell interactions

### **Clinical Relevance**
- **Neuroinflammation**: Understanding brain inflammatory responses
- **Blood-Brain Barrier**: Mechanisms of BBB dysfunction
- **Therapeutic Targets**: Potential intervention strategies
- **Disease Modeling**: Stroke, neurodegeneration, autoimmune disorders

## 🛠️ **Technical Implementation**

### **Statistical Methods**
- **DESeq2**: Negative binomial GLM with shrinkage estimation
- **Multiple Testing**: FDR control at 5% level
- **Effect Size**: Log2 fold change thresholds
- **Power Analysis**: Adequate sample size (n=12/group)

### **Computational Tools**
- **R/Bioconductor**: Core analysis environment
- **clusterProfiler**: Functional enrichment analysis
- **ggplot2**: Professional data visualization
- **pheatmap**: Advanced heatmap generation
- **DESeq2**: Industry-standard differential expression

## 📚 **Documentation**

### **Analysis Documentation**
- **Comprehensive Methods**: Detailed statistical approaches
- **Biological Context**: Scientific background and rationale
- **Quality Assessment**: Technical validation and interpretation
- **Results Interpretation**: Scientific significance and implications

### **Code Documentation**
- **Clear Commenting**: Line-by-line explanation of analysis steps
- **Modular Structure**: Organized workflow with distinct sections
- **Reproducible Research**: Complete computational environment specification
- **Professional Standards**: Publication-quality code organization

## 🤝 **Contributing**

This is an educational and research project. Contributions welcome:

1. **Fork the repository**
2. **Create your feature branch** (`git checkout -b feature/AmazingFeature`)
3. **Commit your changes** (`git commit -m 'Add some AmazingFeature'`)
4. **Push to the branch** (`git push origin feature/AmazingFeature`)
5. **Open a Pull Request**

### **Areas for Contribution**
- Additional visualization methods
- Alternative statistical approaches
- Extended functional analyses
- Improved documentation
- Code optimization

## 📄 **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

This analysis uses data from the EMBL-EBI Expression Atlas (experiment E-MTAB-11468). The statistical analysis pipeline relies on DESeq2 (Love et al., 2014) and other Bioconductor packages.

## Contact

**Helia Mohammadi**  
Student, Applied Computer Science and Artificial Intelligence  
Email: qhellia@gmail.com

For questions about this analysis or collaboration opportunities, feel free to reach out.

## Citation

If you find this analysis useful for your research, please cite:

```bibtex
@misc{mohammadi2025tnf,
  title={TNF-α Effects on Brain Endothelial Cells: RNA-seq Analysis},
  author={Mohammadi, Helia},
  year={2025},
  url={https://github.com/Helialiaia01/TNF-alpha-RNA-seq-Analysis},
  note={Comprehensive differential expression analysis using DESeq2}
}
```

**This project represents an educational bioinformatics analysis suitable for learning and demonstrating RNA-seq analysis techniques.** �
