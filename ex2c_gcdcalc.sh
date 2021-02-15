#!/bin/bash
if [ $# -ne 2 ]; then #checking number of parameters given
    echo "Please give two arguments of type integer"
    exit 1
fi
divident=$1
divisor=$2
remainder=1
until [ $remainder -eq 0 ]
do
remainder=$((divident%divisor))
divident=$divisor
divisor=$remainder
done
echo GCD of $1 and $2 = $divident
