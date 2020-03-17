#!/bin/bash
for (( index=0; index < 10; index++ ))
do

Number[index]=$(( RANDOM%(900) + 100 ))

done
echo ${Number[@]}
largest=${Number[0]}
second_largest=${Number[1]}
if (( $largest > $second_largest ))
then
	temp=$largest
	largest=$second_largest
	second_largest=$temp	
fi
for (( index1=0; index1 < 10; index1++ ))
do
	if (( $largest < ${Number[index1]} ))
	then
		largest=${Number[index1]}
	fi
	if (( $second_largest < ${Number[index1]} && ${Number[index1]} < $largest ))
	then
		second_largest=${Number[index1]}
	fi
done
#echo "$largest"
echo "Second largest number in array is $second_largest"
smallest=${Number[0]}
second_smallest=${Number[1]}
if (( $smallest > $second_smallest ))
then
	temp=$smallest
	smallest=$second_smallest
	second_smallest=$temp
fi
for (( index1=0; index1 < 10; index1++ ))
do
	if (( $smallest > ${Number[index1]} ))
	then
		smallest=${Number[index1]}
	fi
	if (( $second_smallest > ${Number[index1]} && ${Number[index1]} > $smallest ))
	then
		second_smallest=${Number[index1]}
	fi
done
#echo "$smallest"
echo "Second smallest number in array is $second_smallest"


