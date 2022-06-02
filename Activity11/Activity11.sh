#!/bin/sh

filename=$1
while read line; 
do
	echo $line
	echo $line | tr ' ' '\n' | sort -rnu | tr '\n' ' '
done < $filename
