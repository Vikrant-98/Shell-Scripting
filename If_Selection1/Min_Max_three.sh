#!/bin/bash 
count=0
greater=$(( RANDOM%(999-100+1) + 100 ))
smaller=$(( RANDOM%(999-100+1) + 100 ))
echo "$greater"
echo "$smaller"
if [ $smaller -gt $greater  ]
then
	temp=$smaller
	smaller=$greater
	greater=$temp
fi
while [ $count != 3 ]
do
	val1=$(( RANDOM%(999-100+1)+100 ))
	echo "$val1"
	if [ $val1 -gt $greater ]
	then
		greater=$val1

	elif [ $smaller -gt $val1 ]
	then
		smaller=$val1
	fi
	((count++))
done
echo "Greater is : $greater"
echo "Smaller is : $smaller"
