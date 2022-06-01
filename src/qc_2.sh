#!/bin/bash

file=""
x="trimmed_"
type="_paired.fastq"
one="_1"
two="_2"

for n in 5 6 7
do 

	echo '................................................'
	echo 'Fastqc for:' $x$n$one$type $x$n$two$type
	echo '................................................'

	fastqc $file$x$n$one$type 
	fastqc $file$x$n$two$type

done 

