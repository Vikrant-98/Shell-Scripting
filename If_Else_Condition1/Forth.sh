#!/bin/bash -x

read -p "Enter first integer " input1
read -p "Enter second integer " input2
read -p "Enter third integer " input3

val1=$(($input1+$input2*$input3))
val2=$(($input3+$input1/$input2))
val3=$(($input1%$input2+$input3))
val4=$(($input1*$input2+$input3))

if [[ $val1 -gt $val2 && $val1 -gt $val3 && $val1 -gt $val4 ]]
then
	echo "$val1 is Greater "

elif [[ $val2 > $val3 && $val2 > $val4  ]]
then
	echo "$val2 is Greater"

elif [[ $val3 > $val4  ]]
then
	echo "$val3 is Greater"
else
	echo "$val4 is Greater"
fi
