#!/bin/bash -x

read -p "Enter Range1 " num1
read -p "Enter Range2 " num2
index=-1

if (( num1 > num2 ))
then
	echo "Enter valid input" 

else
	for (( i = num1 ; i <= num2; i++ ))
	do
		if (( $i > 10 && $(($i % 10)) == $(($i / 10)) ))
		then
			Number[++index]=$i
		fi
	done
fi
echo "${Number[@]}"





