#!/bin/bash -x

lock1=1
lock2=100
lock3=$lock2
num1=$lock2

echo $num1
while [[ $num1 > 1 ]]
do
	read -p "Enter 0 for number is between $lock1 and $lock2 or Enter 1 " input

	if (( $input == 0 ))
	then
		num=$(($(($lock3+$lock1))/2))
		lock1=$lock1
		lock3=$lock2
		lock2=$num
		num1=$(($lock2-$lock1))

	elif (( $input == 1 ))
	then
		num=$(($(($lock2+$lock1))/2))
		lock1=$lock2
		lock2=$lock3
		num1=$(($lock2-$lock1))
	fi
done
number=$(($lock1+1))
echo "your Number is $number"
