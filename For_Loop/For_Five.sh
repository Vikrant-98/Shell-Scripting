#!/bin/bash -x

read -p "Enter your number " n
n1=$n
for (( i = $n-1; $i != 0; i-- ))
do
	n=$(($n1*$i))
	n1=$n
done

echo "$n"
