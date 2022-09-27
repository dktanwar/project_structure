############################
## Author: Deepak Tanwar  ##
############################

# This makefile will run the FastQC software to check the quality of FastQ files

SHELL:=/bin/bash
source_dir=./input
target_dir=./output

$(shell ln -srf ../03_FastQC_trimmed/input/*.gz ./input/)

files := $(wildcard $(source_dir)/*_1_val_1.fq.gz)
targets := $(patsubst $(source_dir)/%_1_val_1.fq.gz, $(target_dir)/%_1.clumped.fq.gz, $(files))

all: $(targets)

$(target_dir)/%_1.clumped.fq.gz: $(source_dir)/%_1_val_1.fq.gz
	clumpify.sh in=$< in2=$(subst _1_val_1.fq.gz,_2_val_2.fq.gz,$<) out=$@ out2=$(subst _1.clumped.fq.gz,_2.clumped.fq.gz,$@) dupedist=2500 dedupe=t optical=t 2>./log/$(subst _1,,$(basename $(notdir $@))).stderr > ./log/$(subst _1,,$(basename $(notdir $@))).stdout
