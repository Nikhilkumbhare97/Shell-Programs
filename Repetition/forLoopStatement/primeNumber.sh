#!/bin/bash -x

read -p "Enter Number To Check Prime of Not :" n

number=0

for (( num=1; num<=$n; num++ ))
do
	if [ $(($n%$num)) -eq 0 ]
	then
		((number++))
	fi
done

if [ $number -eq 2 ]
then
		echo $n is a Prime Number
else
		echo $n is not a Prime Number
fi
