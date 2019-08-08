# DESCRIPTION:
# mk module for quality control of single-end FASTQ files
#
# USAGE:
# Single target execution: `mk <TARGET>` where TARGET is
# any line printed by the script `bin/mk-targets`
#
# Multiple target execution in tandem `bin/mk-targets | xargs mk`
#
# AUTHOR: HRG
#
# run FastQC on the *.fastq.gz files in data
#
results/%_fastqc.zip:   data/%.fastq.gz
	DIR="`dirname $target | sort -u`"
	mkdir -p "$DIR"
	fastqc $prereq -o "$DIR" \
		--adapters config/adapter_list.txt \
		--limits config/limits.txt \
		-contaminants config/contaminant_list.txt 
