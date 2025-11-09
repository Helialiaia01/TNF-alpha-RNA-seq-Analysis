# TNF-α Effects on Brain Endothelial Cells

RNA-seq analysis investigating how TNF-α affects brain endothelial cells.

## Why This Project?

I chose this because a family member has MS. In MS, inflammatory molecules like TNF-α break down the blood-brain barrier, letting immune cells attack myelin. This helped me learn bioinformatics while studying something meaningful.

## What I Did

Analyzed RNA-seq data to find which genes change when brain endothelial cells are exposed to TNF-α.

**Data**: EMBL-EBI Expression Atlas (E-MTAB-11468)  
**Link**: https://www.ebi.ac.uk/gxa/experiments/E-MTAB-11468

Note: Dataset has both astrocytes and endothelial cells, but I filtered to analyze only endothelial cells (the BBB-forming cells).

## Key Findings

- 5,813 genes changed significantly
- 2,853 up, 2,960 down
- Strong inflammatory response
- High quality data

## How to Run

1. Clone repo
2. Install R packages: `source("requirements.R")`
3. Download data from link above, put in `data/` folder
4. Open Rmd file in RStudio, click Knit

## Methods

- DESeq2 for differential expression
- FDR < 0.05
- GO and pathway analysis

## Contact

Helia Mohammadi  
qhellia@gmail.com

## License

MIT - see LICENSE file
