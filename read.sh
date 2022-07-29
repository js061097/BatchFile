#!/bin/bash

INPUT=test.csv
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read o1 o2
do
	./a.out $o1 20000 $o2
	echo $val >> log.csv
done < $INPUT
