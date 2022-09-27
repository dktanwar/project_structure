############################
## Author: Deepak Tanwar  ##
############################

# This makefile will run the FastQC software to check the quality of FastQ files

SHELL:=/bin/bash
source_dir=./input
target_dir=./output

$(shell ln -sr ../02_trimming/output/*/*.gz ./input/)

files := $(wildcard $(source_dir)/*.fq.gz)
targets := $(patsubst $(source_dir)/%.fq.gz, $(target_dir)/%.zip, $(files))

all: $(targets)

$(target_dir)/%.zip: $(source_dir)/%.fq.gz
	fastqc -v > ./log/$(basename $(notdir $@)).stdout && fastqc $< -o ./output/ --noextract -f fastq -t 8 2>./log/$(basename $(notdir $@)).stderr
