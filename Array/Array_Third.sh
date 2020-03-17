#!/bin/bash -x

read -p "Enter Number " n
index=-1
for (( i = 2; $n != 1;  ))
do
	if (( $(( $n % $i )) == 0  ))
	then
		echo "$i"
		Number[++index]=$i
		n=$(($n/$i))
	else
		((i++))
	fi
done

echo "${Number[@]}"
