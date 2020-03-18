#!/bin/bash -x

args=("$@")

echo $@

m=${args[0]}
d=${args[1]}

if [[ $m > 2 && $m < 7 ]]
then
	val=$m%2
	if [[ $val == 1  && $d < 32 ]]
	then
		echo "$@ is valid and Between March and June"
	elif [[ $d < 31 ]]
	then
		echo "$@ is valid and Between March and June"
	fi
else

	echo "$@ is not valid"
fi
