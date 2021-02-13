#!/bin/bash

declare -a inp
inp=("$@")

#for ((k=1; k<$#; k++))
#do
#	echo ${inp[$k]}
#done

if [ ${1:0:1} == '-' ]; then #tto to if ginete an to proto gramma/xaraktira einai - diladi kapia parametros
for ((i=1; i<$#; i++))
do
	grep $1  ${inp[i]} ${inp[-1]}
done

else 
for ((i=0; i<$#; i++))
do
	grep ${inp[i]} ${inp[-1]}
done
fi
