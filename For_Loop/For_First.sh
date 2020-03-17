#!/bin/bash -x

args=("$@")
echo $@
a1=2
a=1
n=${args[0]}

for (( i = 1; $i <= $n ; i++))
do
	a1=$(($a*2))
	a=$a1
	echo "Table is :$a1"
done
