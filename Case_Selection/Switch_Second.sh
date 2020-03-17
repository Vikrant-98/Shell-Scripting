#!/bin/bash -x

read -p "Enter Single digit Number :" input

case $input in

0)
	echo "Sunday"
	;;
1)
	echo "Monday"
	;;
2)
	echo "Tuesday"
	;;
3)
	echo "Wednesday"
	;;
4)
	echo "Thusday"
	;;
5)
	echo "Friday"
	;;
6)
	echo "Saturday"
	;;
*)
	;;
esac
