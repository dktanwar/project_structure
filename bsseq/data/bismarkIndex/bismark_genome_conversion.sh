#!/usr/bin/env bash

bismark_genome_preparation --version > bismark_genome_conversion.log && bismark_genome_preparation --bowtie2 ./ 2>> bismark_genome_conversion.log >> bismark_genome_conversion.log
