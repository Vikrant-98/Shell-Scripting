#!/bin/bash -x

echo "1.Feet to Inch"
echo "2.Inch to Feet"
echo "3.Meter to Feet"
echo "4.Feet to Meter"
read -p "Enter your Choice :" choice
read -p "Ente number to Convert:" input
case $choice in

1)
	Inch=$(echo "scale=2; $input*12" | bc )
	echo "Value in Inch is $Inch"
	;;
2)
	feet=$(echo "scale=2; $input/12" | bc )
	echo "Value in feet is $feet"
	;;
3)
	meter=$(echo "scale=2; $input*0.3048" | bc )
	echo "Value in feet is $meter"
	;;
4)
	feet1=$(echo "scale=2; $input/0.3048" | bc )
	echo "Value in feet is $feet1"
	;;
*)
	;;
esac
