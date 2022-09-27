#############################
### Author: Deepak Tanwar ###
#############################

#!/bin/bash

wget ftp://ftp.arabidopsis.org/home/tair//Sequences/whole_chromosomes/TAIR10_chr*.fas && cat TAIR10*.fas > athaliana.fa && rm -rf TAIR*.fas && samtools faidx athaliana.fa
