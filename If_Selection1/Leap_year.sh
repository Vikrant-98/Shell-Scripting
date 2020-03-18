#1/bin/bash -x

read -p "Enter year : " year
leap=0

if (( $year % 4 == 0 ))
then
	if (( $year % 100 == 0 && $year % 400 == 0))
	then
		leap=0
	else
		leap=1
	fi

else
	leap=0
fi
if (( $leap == 1 ))
then
	echo "$year is a leap year"
else
	echo "$year is not a leap year"
fi
