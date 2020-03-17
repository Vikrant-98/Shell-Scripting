#!/bin/bash -x
function palindrome()
{
val1=$input
val=0
while (( $val1 != 0  ))
do
	val2=$(( $val1 % 10 ))
	val=$(( $val * 10 + $val2 ))
	val1=$(( $val1 / 10 ))
done
if (( $val == $input ))
then
	echo "$val is palindrome "
	prime $(($input))
fi
}
function prime()
{
	for (( input1=2 ; $(($input%$input1)) != 0; ))
	do
		((input1++))
	done
		if [ $input1 == $input ]
		then
			echo "$input1 is also prime number"
		fi
}
read -p "Enter the input : " input
result1="$( palindrome $((input))  )"
echo "$result1"
