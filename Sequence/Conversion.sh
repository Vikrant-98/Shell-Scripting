#!/bin/bash -x

echo "1.Convert of feet"
echo "2.Rectangular plot in meter :"
echo "3.Plot in acres"
read -p "Enter your choice : " choice

if [ $choice -eq 1 ]
then
	read -p "Enter the value in inch : " input
	feet=$(echo "scale=2; $input/12" | bc )
	echo "Value in feet is $feet"
elif [ $choice -eq 2 ]
then
	feet=0.3048
	Rect=$(echo "scale=2; 60*40*$feet" | bc )
	echo "Value is $Rect"
elif [ $choice -eq 3 ]
then
	acres=$(echo "scale=2; (40*60*25)/43560" | bc )
	echo "Value is $acres"
else
	echo "Enter correct choice"
fi
