#!/bin/bash -x

count=1
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
count7=0
count8=0
count9=0
count10=0
count11=0
count12=0
while (( $count != 50 ))
do
((count++))
var=$(( (( RANDOM%12 )) + 1 ))
declare -A Month
case $var in
1)
	((count1++))
	Month[January]="$var"
	;;
2)
	((count2++))
	Month[February]="$var"
	;;
3)
	((count3++))
	Month[March]="$var"
	;;
4)
	((count4++))
	Month[April]="$var"
	;;
5)
	((count5++))
	Month[May]="$var"
	;;
6)
	((count6++))
	Month[June]="$var"
	;;
7)
	((count7++))
	Month[July]="$var"
	;;
8)
	((count8++))
	Month[August]="$var"
	;;
9)
	((count++))
	Month[September]="$var"
	;;
10)
	((count10++))
	Month[October]="$var"
	;;
11)
	((count11++))
	Month[November]="$var"
	;;
12)
	((count12++))
	Month[December]="$var"
	;;
esac
done
echo "$count1 born on " ${!Month[January]}
echo "$count2 born on " ${!Month[February]}
echo "$count3 born on " ${!Month[March]}
echo "$count4 born on " ${!Month[April]}
echo "$count5 born on " ${!Month[May]}
echo "$count6 born on " ${!Month[June]}
echo "$count7 born on " ${!Month[July]}
echo "$count8 born on " ${!Month[August]}
echo "$count9 born on " ${!Month[September]}
echo "$count10 born on " ${!Month[October]}
echo "$count11 born on " ${!Month[November]}
echo "$count12 born on " ${!Month[December]}
#echo ${!Month[@]}
