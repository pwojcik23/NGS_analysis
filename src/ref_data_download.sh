#!/bin/bash



for chr in I II III IV V VI VII VIII IX X XI XII XIII XIV XV XVI
	do 
		echo '..................................'
		echo 'Accesing file for CHR:' $chr
		echo '..................................'
		
		wget 'http://ftp.ensembl.org/pub/release-106/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.'$chr'.fa.gz'

	done
	
zcat Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.* > gen_refer.fna

