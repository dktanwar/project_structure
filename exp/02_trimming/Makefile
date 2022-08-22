############################
## Author: Deepak Tanwar  ##
############################

# This makefile will run the TrimGalore software to improve the quality of FastQ files

SHELL:=/bin/bash
source_dir=./input
target_dir=./output

$(shell ln -srf ../01_FastQC_raw/input/*.gz ./input/)

files := $(wildcard $(source_dir)/*_1.fastq.gz)
targets := $(patsubst $(source_dir)/%_1.fastq.gz, $(target_dir)/%, $(files))

all: $(targets)

$(target_dir)/%: $(source_dir)/%_1.fastq.gz
	mkdir $@ && trim_galore --paired -q 30 --length 30 -j 8 --trim-n --basename $(notdir $@) -o $@ $< ./input/$(basename $(basename $(notdir $@)))_2.fastq.gz > ./log/$(notdir $@).stdout 2>./log/$(notdir $@).stderr
