#!/bin/bash -x

args=("$@")

echo $@

m=${args[0]}
d=${args[1]}
y=${args[2]}

y0=$(( $y - ( 14 - $m ) / 12 ))
x=$(( $y0 + $y0 / 4 - $y0 / 100 + $y0 / 400 ))
m0=$(( $m + 12 * (( 14 - $m ) / 12 ) - 2 ))
d0=$(( ( $d + $x + ( 31 * $m0 ) / 12 ) % 7 ))

case $d0 in

	0)
		echo "Day on Date $@ is Sunday"
		;;
	1)
		echo "Day on Date $@ is Monday"
		;;
	2)
		echo "Day on Date $@ is Tuesday"
		;;
	3)
		echo "Day on Date $@ is Wednesday"
		;;
	4)
		echo "Day on Date $@ is Thusday"
		;;
	5)
		echo "Day on Date $@ is Friday"
		;;
	6)
		echo "Day on Date $@ is Saturday"
		;;
	*)
		echo "Date $d is invalid"
		;;
esac
