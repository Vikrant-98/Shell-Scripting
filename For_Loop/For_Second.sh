#!/bin/bash 

args=("$@")

n=${args[0]}
result=1
for (( i=2; i <= $n; i++ ))
do

	result=$( echo "scale=2; $result + 1/$i" | bc )
	echo 1/$i
done

echo $result
