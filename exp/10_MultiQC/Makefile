#############################
## Author : Deepak Tanwar  ##
#############################

## MultiQC report of Bisulphite-Seq data
$(shell ln -srf ../0* ./input/)
all: task1
task1:
	multiqc --version > ./log/multiqc.stdout && multiqc -d -f -i "MultiQC report for Bisulphite-Seq data" -b "<i>--by</i> <br> <b>Deepak Tanwar</b>" -c multiqc_config.yaml -o ./output -z -v ./input  2>./log/multiqc.stderr >>./log/multiqc.stdout
