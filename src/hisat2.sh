#!/bin/bash

trim="trimmed_"
type=".fastq"

one="_1"
two="_2"

p="_paired"

out="SRR06454"

for n in 5 6 7

do
	echo '................................................'
	echo 'Hisat2 for:' $trim$n$one$p$type $trim$n$two$p$type
	echo '................................................'


	hisat2 -x ~/indeksy/index -1 $trim$n$one$p$type -2 $trim$n$two$p$type -S /media/piotr/169B-5D66/$out$n'.sam' 

done