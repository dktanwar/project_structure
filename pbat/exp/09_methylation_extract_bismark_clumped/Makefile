############################
## Author: Deepak Tanwar  ##
############################

# This makefile will extract the methylation information from bismark alignment files

SHELL:=/bin/bash
source_dir=./input
target_dir=./output

$(shell ln -fsr ../08_alignment_bismark_cumped/output/*.bam ./input/ && ln -fsr ../04_alignment_bismark/input/bismarkIndex ./input/)

files := $(wildcard $(source_dir)/*_1.clumped_bismark_bt2_pe.bam)
targets := $(patsubst $(source_dir)/%_1.clumped_bismark_bt2_pe.bam, $(target_dir)/%, $(files))

all: $(targets)

$(target_dir)/%: $(source_dir)/%_1.clumped_bismark_bt2_pe.bam
	mkdir -p $@ && bismark_methylation_extractor --version > ./log/$(notdir $@).stdout && bismark_methylation_extractor $< -s -o $@ --multicore 8 --bedGraph --cytosine_report --genome_folder ./input/bismarkIndex/ 2> ./log/$(notdir $@).stderr >> ./log/$(notdir $@).stdout && pigz -3 -p 8 $@/*.txt
