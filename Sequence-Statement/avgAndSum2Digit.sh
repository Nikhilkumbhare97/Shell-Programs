#!/bin/bash -x

count=0
while [ $count != 6 ]
do

	number=$((RANDOM%100))
	if [ $number -lt 100 ] && [ $number -gt 10 ]
	then
		sum=$(( $sum + $number ));
		((count++))
	fi
done

echo $sum

avg=$(($sum/5));

echo $avg
