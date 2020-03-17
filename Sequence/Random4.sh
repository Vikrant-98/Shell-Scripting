#!/bin/bash 

count=0
val1=0
while [ $count != 5 ]
do
	val=$((RANDOM%100))
	if [ $((val/10)) -ge 1 ]
	then
		echo $val
		val1=$((val1+val))
		((count++))
	fi
done
avg=$(echo "scale=2; $val1/$count" | bc )
echo "Sum of two dice is $val1"
echo "Average is $avg"
