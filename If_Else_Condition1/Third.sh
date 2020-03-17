#!/bin/bash -x

read -p "Enter Single digit Number :" input

if [ $input == 1 ]
then
	echo "one"
elif [ $input == 10 ]
then
	echo "Ten"

elif [ $input == 100 ]
then
	echo "Hundred"

elif [ $input == 1000 ]
then
	echo "Thousand"

elif [ $input == 1000000 ]
then
	echo "Million"

elif [ $input == 1000000000 ]
then
	echo "Billion"

elif [ $input == 1000000000000 ]
then
	echo "Trillian"
fi
