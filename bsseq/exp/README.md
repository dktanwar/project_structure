# Experiments

This directory contain different possible analysis for BS-seq data.

- The order of analysis is represented by the number mentioned in front of each directory
- Run the command `make` after entering into the directory
- Run the make command in directory 2, for example, only after running command in directory 1

## Analysis
- **01_FastQC_raw** : `FastQC` for quality check on raw files
- **02_trimming** : `TrimGalore` for quality control/ trimming
- **03_FastQC_trimmed** : `FastQC` on trimmed files
- **04_alignment_bismark** : `Bismark` for aligning trimmed fastq files
- **05_dedup_bismark** : `Bismark` for removing duplicates from aligned data
- **06_methylation_extract_bismark** : `Bismark` for methylation calling
- **07_dedup_clumpify** : `clumpify` for removing optical duplicates
- **08_alignment_bismark_cumped** : `Bismark` for aligning clumped fastq files
- **09_methylation_extract_bismark_clumped** : `Bismark` for methylation calling
- **10_MultiQC** : `MultiQC` for generating an overview report
