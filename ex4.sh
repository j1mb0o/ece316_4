#!/bin/bash

declare -a inp
inp=("$@")

#for ((k=0; k<$#; k++))
#do
#	echo ${inp[$k]}

#done
#echo ${inp[-1]}

if [ ${1:0:1} == '-' ]; then #tto to if ginete an to proto gramma/xaraktira einai - diladi kapia parametros
	if [ $1 == '-r' ]; then
		for filename in *.txt ; do
			grep $2 $filename
		done
	else

		for ((i=1; i<$#; i++))
		do
			grep $1  ${inp[i]} ${inp[-1]}
		done
	fi
else 
	for ((i=0; i<$#; i++))
	do
		grep ${inp[i]} ${inp[-1]}
	done
fi


#echo ${inp[-1]}
