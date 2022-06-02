#!/bin/sh


counter=0

declare -a INT_ARR=()

echo "Enter 5-10 integers, inputting atleast 5"


while [ $(echo "${INT_ARR[@]}" | wc -w) -lt 5 ]
do
	read USER_INT
