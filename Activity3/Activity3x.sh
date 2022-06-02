#!/bin/sh


output=$( 

for i in {1..5}
do 
	shuf -i 1-50 -n1
	if [ $i -eq 5 ]
	then
	shuf -i 1-10 -n1
	fi
done

)

#send to seperate file

echo $output >> Activity3Output.$(date +'%Y%m%d')

#user

x=1
while [ $x -le 6 ]
do
	if [ "$x" -le "5" ]
	then
		echo Enter 5 numbers between 1 and 50
		read input

		if [ "$input" -gt "0" ] && [ "$input" -le "50" ]
		then 
			Input_Array+=($input)
			((x++))

		else 
			((x--))
			echo "Submit a valid number"

		fi
        else [ "$x" -eq "6" ]
		((x++))
		echo " enter numbers between 1-10 "
		read input

		if [ "$input" -gt 0 ] && [ "$input" -le 10 ]
		then
			Input_Array+=($input)
		else
			((x--))
			echo "write a valid number"
		fi
	fi

echo ${Input_Array[@]}
done


#comparison

echo $output

if [ "${Input_Array[@]}" == "$output" ]
then
	echo you are the winner
else
	echo you lose

fi

