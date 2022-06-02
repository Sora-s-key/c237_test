#!/bin/bash

echo -n "enter number: "
read n
num=0
rev="" #placement value
user_num=$n #hold user number

while [ $n -gt 0 ] #while loop totaling sum of all numbers
do 
	num=$(( $n % 10))
	n=$(( $n / 10)) #get next digit
	rev=$(echo ${rev}${num})
	
done

echo "$user_num is the reverse of $rev"


