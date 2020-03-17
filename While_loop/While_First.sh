#!/bin/bash 

args=("$@")
echo $@
index=1
val1=2
val=1
num=${args[0]}

while [[ $index != $num && $val1 != 256 ]]
do
	val1=$(($val*2))
	val=$val1
	echo "Table is :$val1"
	((index++))
done
