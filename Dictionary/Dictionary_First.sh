#!/bin/bash -x
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
while (( $count1 != 10 && $count2 != 10 && $count3 != 10 && $count4 != 10 && $count5 != 10 && $count6 != 10 ))
do
declare -A Dies
var=$(((RANDOM%6)+1))
echo "$var"
case $var in
1)
	((count1++))
	Dies[One]="$var"
	;;
2)
	((count2++))
	Dies[Two]="$var"
	;;
3)
	((count3++))
	Dies[Three]="$var"
	;;
4)
	((count4++))
	Dies[Four]="$var"
	;;
5)
	((count5++))
	Dies[Five]="$var"
	;;
6)
	((count6++))
	Dies[Six]="$var"
	;;
esac	
done
	echo ""
	echo ""
	echo ${Dies[One]}" arives " $count1 "times"
	echo ${Dies[Two]}" arives " $count2 "times"
	echo ${Dies[Three]}" arives " $count3 "times"
	echo ${Dies[Four]}" arives " $count4 "times"
	echo ${Dies[Five]}" arives " $count5 "times"
	echo ${Dies[Six]}" arives " $count6 "times"
	echo ""
	echo ""

if [ $count1 == 10 ]
then
	echo ${Dies[One]}" arives most of the times"
elif [ $count2 == 10 ]
then
	echo ${Dies[Two]}" arives most of the times"

elif [ $count3 == 10 ]
then
	echo ${Dies[Three]}" arives most of the times"

elif [ $count4 == 10 ]
then
	echo ${Dies[Four]}" arives most of the times"

elif [ $count5 == 10 ]
then
	echo ${Dies[Five]}" arives most of the times"

elif [ $count6 == 10 ]
then
	echo ${Dies[Six]}" arives most of the times"
fi

while (( $count1 != 0 && $count2 != 0 && $count3 != 0 && $count4 != 0 && $count5 != 0 && $count6 != 0 ))
do

((count1--))
((count2--))
((count3--))
((count4--))
((count5--))
((count6--))

done
if [ $count1 == 0 ]
then
	echo ${Dies[One]}" arives least of the times"
elif [ $count2 == 0 ]
then
	echo ${Dies[Two]}"  arives least of the times"

elif [ $count3 == 0 ]
then
	echo ${Dies[Three]}" arives least of the times"

elif [ $count4 == 0 ]
then
	echo ${Dies[Four]}" arives least of the times"

elif [ $count5 == 0 ]
then
	echo ${Dies[Five]}" arives least of the times"

elif [ $count6 == 0 ]
then
	echo ${Dies[Six]}" arives least of the times"
fi

