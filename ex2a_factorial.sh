#!/bin/bash


if [[ $# -lt 1 || $# -gt 1 ]]; then 
	echo Please give one number 
	exit 1
fi

if [ $1 -lt 0 ]; then
	echo Please give a positive number
	exit 1
fi

if [ $1 -gt 20 ]; then
echo Please enter a number under 20!
exit 1
fi
fact=1;
#declare -i fact=1;
for ((i=1 ; i<=$1; i++))
do 
#echo this is $i
fact=$(($fact * $i))
done
echo $fact;
