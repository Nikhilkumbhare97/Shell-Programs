#!/bin/bash -x

num=0
while [ $num != 6 ]
do

	number=$((RANDOM%100))
	if [ $number -lt 100 ] && [ $number -gt 10 ]
	then
		sum=$(( $sum + $number ));
		((num++))
	fi
done

echo $sum

avg=$(($sum/5));

echo $avg
