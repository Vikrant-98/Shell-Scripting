#!/bin/bash -x

Gamblor=100
counter1=0
counter2=0
echo "Gamblors initially amount is : $Gamblor "
echo ""
while (( $Gamblor != 0 && $Gamblor != 200 ))
do
val=$((RANDOM%2))

	if [ $val -eq 0 ]
	then
		((Gamblor++))
		((counter1++))
	else
		((Gamblor--))
		((counter2++))
	fi
done
if (( $Gamblor == 0 ))
then
	echo "Gamblor Win 200 !!!!"
else
	echo "Gamblor loose 0!!!!"
fi
echo ""
echo "Gamblor wins $counter1 times"
echo ""
echo "Gamblor looses $counter2 times"
