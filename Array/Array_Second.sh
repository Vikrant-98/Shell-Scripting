#!/bin/bash

for (( index=0; index < 10; index++ ))
do

Number[index]=$(( RANDOM%(900) + 100 ))

done

for (( index1=0; index1<9; index1++ ))
do 
	for (( index=0; index<$((10-$index1)); index++ ))
	do
		if (( ${Number[index]} > ${Number[index+1]} ))
		then
			temp=${Number[index]}
			Number[index]=${Number[index+1]}
			Number[index+1]=$temp
		fi
	done

done

echo "${Number[@]}"
echo "Second largest element is ${Number[8]}"
echo "Second smallest element is ${Number[1]}"
