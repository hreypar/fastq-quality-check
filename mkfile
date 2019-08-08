et  DESCRIPTION:
# mk module for quality control of FASTQ files
#
# USAGE:
# Single target execution: `mk <TARGET>` where TARGET is
# any line printed by the script `bin/mk-targets`
#
# Multiple target execution in tandem `bin/mk-targets | xargs mk`
#
# AUTHOR: HRG
#
# Load configuration file
< config.mk

# Run FastQC on the *.fastq.gz files in data
#
results/%_fastqc.zip:   data/%.fastq.gz
	DIR="`dirname $target | sort -u`"
	mkdir -p "$DIR"
	fastqc $prereq -o "$DIR" \
		--adapters config/adapter_list.txt \
		--limits config/limits.txt \
		--contaminants config/contaminant_list.txt

# Generate multiqc report
# run as `mk mqc`
#
mqc:V:	results/
	multiqc $prereq \
		--filename "multiqc-$MULTIQC_REPORT_NAME" \
		--outdir $prereq

# Clean intermediate FastQC files
# run as `mk clean`
#
clean:V:
	find results/ \
		-type f \
		-name "*_fastqc.zip" \
		-o -name "*_fastqc.html" \
	| xargs rm -f
	find results/ \
		-type d \
		-empty \
		-delete

