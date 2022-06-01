#!/bin/bash

file=""
x="SRR06454"
type=".fastq.gz"
five="5_"
six="6_"
seven="7_"

for n in 1 2

do

	echo '....................'
	echo $file$x$five$n$type 
	echo '....................'
	
	fastqc $file$x$five$n$type 

	echo '....................'
	echo $file$x$six$n$type 
	echo '....................'

	fastqc $file$x$six$n$type 

	echo '....................'
	echo $file$x$seven$n$type 
	echo '....................'
	
	fastqc $file$x$seven$n$type 
done

