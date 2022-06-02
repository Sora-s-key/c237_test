#!/bin/sh

a=$1
b=$2

function checkGreater

{
	if [ $a -gt $b ]
	then 
		echo "It would be True to say $a is larger than $b"
	else 
		echo "It would be False to say $a is larger than $b"
	fi
}

function checkDifference

{
	(( answer=$a-$b ))
	echo -e "A computation for you:\nThe difference of inputs $a and $b is $answer"

}

if [[ "$a" == *[0-9]* && "$b" == *[0-9]* ]]
then 
	checkGreater
	checkDifference
else 
	echo "Input a valid digit"
fi

