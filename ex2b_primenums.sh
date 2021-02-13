#!/bin/bash
if [ $1 -le 0 ]; then
echo Please enter a number greater than 0!
exit 1
fi
if [ $1 -le 1 ]; then
echo 1 is not a prime number!
exit 1
fi
if [ $1 -le 3 ]; then
echo $1 is a prime number!
exit 1
fi
#in=$1;
if [[ $(($1%2)) -eq 0 || $(($1%3)) -eq 0 ]]; then
echo $1 is not a prime number!
exit 1
fi
for ((i=5 ; i*i<=$1; i=i+6))
do 
#echo this is $i
if [[ $(($1%i)) -eq 0 || $(($1%(i+2))) -eq 0 ]]; then
echo $1 is not a prime number!
exit 1
fi
done
echo $1 is a prime number!
