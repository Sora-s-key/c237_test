#!/bin/sh

USER_INPUT=$1
if [ $# - lt 1 ]

then
       echo "Want more user info?"
       exit 1
else
	echo "Run again when you want more info"


while [ $USER_INPUT = 'yes' ]
do	
$USER_NAME='whoami'
$USER_DATE='timedatectl'

read USER_INPUT
echo $USER_NAME
done
