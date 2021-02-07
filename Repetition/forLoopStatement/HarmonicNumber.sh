#!/bin/bash -x

read -p "Enter number n for nth Harmonic number :" n

Hn=0
for (( num=1; num<=$n; num++ ))
do
		Hn=`expr $Hn+1/$num`
done
	echo $Hn
