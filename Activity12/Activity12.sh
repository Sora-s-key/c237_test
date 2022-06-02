#!/bin/sh

file1=$1
file2=$2

if cmp "$file1" "$file2";
then
	printf 'The contents of the file: "%s"\nis the same as the contents of: "%s"\n', "$file1" "$file2"
else
	printf 'The contents of the file: "%s"\nis different from the contents of: "%s"\n', "$file1" "$file2" 
	
fi

