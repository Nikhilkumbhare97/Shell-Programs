#!/bin/bash -x

read -p "Enter n :" n

table=0

result=`expr 2^$n | bc -l`

for (( num=1; num<=$n; num++ ))
do
	if [ $table -ne $result ]
	then
		table=`expr 2^$num | bc -l`
	echo $table
	else
	echo error
	fi
done
