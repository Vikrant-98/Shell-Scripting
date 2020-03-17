#1/bin/bash -x

read -p "Enter the integer : " input

for (( index=2 ; $(($input%$index)) != 0; ))
do
	((index++))
done
if [ $index -eq $input ]
then
	echo "$index is Prime"
else
	echo "$index is not Prime"
fi
