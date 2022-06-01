#!/bin/bash



for n in 5 6 7

do
	echo '.......................................................'
	echo 'Variant calling with bcftools:' '/home/piotr/projekt/samtools/BAM/SRR06454'$n
	echo '.......................................................'
		
	bcftools mpileup -Ou -f gen_refer.fna '/home/piotr/projekt/samtools/BAM/SRR06454'$n'_sort.bam' | bcftools call --ploidy 1 -mv -Ob | bcftools view -i '%QUAL>=20' > '/home/piotr/projekt/vcfs/SRR06454'$n'.vcf'

done