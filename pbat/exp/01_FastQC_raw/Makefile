############################
## Author: Deepak Tanwar  ##
############################

# This makefile will run the FastQC software to check the quality of FastQ files

SHELL:=/bin/bash
source_dir=./input
target_dir=./output

$(shell if [ -d ../../data/raw_change_name/output ]; then ln -srf ../../data/raw_change_name/output/*.gz ./input/; else ln -sr ../../data/raw/*.gz ./input/; fi)

files := $(wildcard $(source_dir)/*.fastq.gz)
targets := $(patsubst $(source_dir)/%.fastq.gz, $(target_dir)/%.zip, $(files))

all: $(targets)

$(target_dir)/%.zip: $(source_dir)/%.fastq.gz
	fastqc -v > ./log/$(basename $(notdir $@)).stdout && fastqc $< -o ./output/ --noextract -f fastq -t 8 2>./log/$(basename $(notdir $@)).stderr
