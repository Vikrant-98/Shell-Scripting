#!/bin/bash -x

var1=$(((RANDOM%6)+1))
var2=$(((RANDOM%6)+1))

Sum=$(($var1+$var2))

echo "The sum of two Dice is :$Sum"
