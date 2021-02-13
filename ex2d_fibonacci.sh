#!/bin/bash
if [[ $# -ne 1 || $1 -lt 0 ]]; then #checking number of parameters given
    echo "Please give one arguments of type positive integer"
    exit 1
fi
declare -a fib
fib[0]=0
fib[1]=1
#echo ${fib[1]}
for (( i=2 ; i<=$1; i++ ))
do
fib[$i]=$((${fib[$i-1]}+${fib[$i-2]}))
done
echo "The $1th fibonacci number is ${fib[$1]}"
