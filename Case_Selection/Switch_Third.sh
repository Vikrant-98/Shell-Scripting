#!/bin/bash -x

read -p "Enter Single digit Number :" input

case $input in

1)
	echo "One"
	;;
10)
	echo "Ten"
	;;
100)
	echo "Hundred"
	;;
1000)
	echo "Thousand"
	;;
1000000)
	echo "Million"
	;;
1000000000)
	echo "Billion"
	;;
1000000000000)
	echo "Trillian"
	;;
*)
	;;

esac
