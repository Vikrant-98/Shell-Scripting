#!/bin/bash -x

for (( j = 2; $j < $n; j++ ))
do
	for (( i=2 ; $(($j%$i)) != 0; ))
	do
		((i++))
	done
		if [ $i -eq $a ]
		then
			echo "$i"
		fi
done
