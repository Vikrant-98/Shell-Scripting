#!/bin/bash -x

read -p "Enter Single digit Number :" input

if [ $input == 0 ]
then
	echo "Sunday"
elif [ $input == 1 ]
then
	echo "Monday"

elif [ $input == 2 ]
then
	echo "Tuesday"

elif [ $input == 3 ]
then
	echo "Wednesday"

elif [ $input == 4 ]
then
	echo "Thusday"

elif [ $input == 5 ]
then
	echo "Friday"

elif [ $input == 6 ]
then
	echo "Saturday"
fi
