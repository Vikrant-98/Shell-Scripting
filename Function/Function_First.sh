#!/bin/bash 

function Conversion()
{
	case $choice in

	1)
		degC=$input
		if (( $degC > -1 && $degC < 101 ))
		then
			degF=$( echo "scale=2; ( $degC * 9/5 ) + 32" | bc )
			echo " Convert from $degC Celcius $degF Farenheit "
		else
			echo "Enter valid input for conversion"
		fi
		;;
	2)
		degF=$input
		if (( $degF > 31 && $degF < 213  ))
		then
			degC=$( echo "scale=2; ($degF - 32) * 5/9" | bc )
			echo " Converted from $degF Farenheit  to $degC Celcius "
		else
			echo " Enter valid input for conversion  "
		fi
		;;
	esac

}
echo "1 for Convert from celcius to farenheit "
echo "2 for convert from farenheit to celcius "
read -p "Enter your choice :" choice
read -p "Enter value you want to Convert :" input
result="$( Conversion $input )"
echo $result
