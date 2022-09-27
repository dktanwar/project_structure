############################
## Author: Deepak Tanwar  ##
############################

# This makefile will run `bismark` software to align trimmed FastQ files

SHELL:=/bin/bash
source_dir=./input
target_dir=./output

$(shell ln -fsr ../04_alignment_bismark/output/*.bam ./input/)

files := $(wildcard $(source_dir)/*.bam)
targets := $(patsubst $(source_dir)/%.bam, $(target_dir)/%.deduplicated.bam, $(files))

all: $(targets)

$(target_dir)/%.deduplicated.bam: $(source_dir)/%.bam
	deduplicate_bismark --version > ./log/$(basename $(notdir $@)).stdout 2> ./log/$(basename $(notdir $@)).stderr && deduplicate_bismark $< --output_dir ./output/ 2>> ./log/$(basename $(notdir $@)).stderr >> ./log/$(basename $(notdir $@)).stdout
