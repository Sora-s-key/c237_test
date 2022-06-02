#!/bin/bash

scorecard=0

#Ask user 10 questions
question1="Is 10 greater than 7?: yes or no"



echo "Enter your name: "
read user

echo "Welcome ${user}!"

echo "Want to try a 10 question quiz? Type 'yes' to begin"

read reply1
interested=$reply1

if [[ $interested != yes ]]; then
       echo "Come back when you are Ready"
       
else
	echo -e "Begin:\n ${question1}"
	read user_input
	if [[ ${user_input} = yes ]];then
		scorecard=`expr ${scorecard} + 1`
		echo "Correct! +1 for you"
		echo "Your Current Score:${scorecard}"
	else 	
		echo "sorry, you got that one wrong. +0"
	echo "Your Current Score:${scorecard}"

	fi
fi
		

