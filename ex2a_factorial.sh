#!/bin/bash
if [ $# -le 1 ]; then 
	echo Please give the right arguments 
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
