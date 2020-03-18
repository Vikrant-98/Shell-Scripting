#!/bin/bash -x

count1=0
count2=0

while (( $count1 != 11 && $count2 != 11 ))
do
val=$((RANDOM%2))

	if [ $val -eq 0 ]
	then
		((count1++))
	else
		((count2++))
	fi
done
if (( $count1 == 11 ))
then
	echo "Head wins!!!!"
else
	echo "Tail Wins!!!!"
fi
