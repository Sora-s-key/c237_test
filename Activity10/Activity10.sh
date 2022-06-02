#!/bin/sh


FILENAME=$1
RANDOM=$$
echo "Your File Name: $1";
echo "Number of Lines wanted in your file: $2";

if [[ -f "$1" ]]; then
echo "$1 exist try with different file name"
else
for ((i=0;i<"$2";i++))
do
echo $RANDOM >> $FILENAME
done
fi
