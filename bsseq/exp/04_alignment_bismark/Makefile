############################
## Author: Deepak Tanwar  ##
############################

# This makefile will run `bismark` software to align trimmed FastQ files

SHELL:=/bin/bash
source_dir=./input
target_dir=./output

$(shell if [ -d ../../data/bismarkIndex/Bisulfite_Genome/CT_conversion ]; then ln -fsr ../../data/bismarkIndex ./input; else (cd ../../data/bismarkIndex/ && ./bismark_genome_conversion.sh) && ln -fsr ../../data/bismarkIndex ./input; fi && ln -fsr ../03_FastQC_trimmed/input/* ./input/)


files := $(wildcard $(source_dir)/*_val_1.fq.gz)
targets := $(patsubst $(source_dir)/%_val_1.fq.gz, $(target_dir)/%_val_1_bismark_bt2_pe.bam, $(files))

all: $(targets)

$(target_dir)/%_val_1_bismark_bt2_pe.bam: $(source_dir)/%_val_1.fq.gz
	bismark --version > ./log/$(basename $(notdir $@)).stdout 2> ./log/$(basename $(notdir $@)).stderr && bismark ./input/bismarkIndex -1 $< -2 $(subst _val_1.fq.gz,_val_2.fq.gz,$<) --multicore 8 -o ./output/ --temp_dir ./output/ --bowtie2 2>> ./log/$(basename $(notdir $@)).stderr >> ./log/$(basename $(notdir $@)).stdout
