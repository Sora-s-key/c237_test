#!/bin/sh


USER_INPUT=$1
LOGPATH=/home/ec2-user/logs
LOGFILE=$LOGPATH/logfile.txt


if [ $# -lt 1 ]
then
	echo "please use an argument"
	exit 1
else
	echo "you provided $USER_INPUT as parameter"
	 
fi

while true
do	
	echo "Please enter a number or type exit to leave"
	read USER_INPUT
	echo $USER_INPUT >> $LOGFILE
	if [ $USER_INPUT = 'exit' ]
	then
		break
	else
		continue
	fi
done


