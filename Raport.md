# Project: “Pooled linkage analysis for discovery of Saccharomyces cerevisiae functional mutations by whole genome sequencing”

# Data
Data comes from https://www.ncbi.nlm.nih.gov/sra/SRX025959[accn]

Sample: Yeast vac22, wild-type segregant pool

Organism: Saccharomyces cerevisiae

Name: vac22 wt

Instrument: Illumina Genome Analyzer

Strategy: WGS

Source: GENOMIC

Selection: RANDOM

Layout: PAIRED

All the data produced during the project is placed in _data_ folder
# Steps of analysis:

1. Data was downloaded from SRA database in fasta format. The files were pair-ended. The amount of reads were limited to 1000 000. This step resulted in 3 directories with 2 .fastq files each. 
2. Quality control was done for each downloaded record with fastqc. SAmples had good per base sequence - over 20.
3. Trimming was done using trimmomatic tool to improve the quality of the data.
4. Quality control was performed again for trimmed data. Results were better than before.
5. Mapping and indexing  was done using hisat2 tool.
6. .sam -> .bam conversion was done using samtools tool as well as sorting part.
7. Detection of polymorphisms was done using bcftools. Output vcf files were created. 
8. Visualization was prepared with use of vcftoolz
9. Annotation wasn't completed sucessfully due to problems with SnpEff programm.

# programms/tools used for analysis
1.  fastq
2.  trimmomatic
3.  hisat2
4.  bcftools
5.  vcftoolz
6.  SnpEff ( no output file in the project)
