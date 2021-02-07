#!/bin/bash -x

echo "Think number Between 1 to 100"

min=0
max=100

while [ $min != $max ]
do
	avg=$((($min+$max)/2))
	read -p "Is Number is Less Than $avg then write 1 and if more than then write 2 or else any Number" n
	if [ $n -eq 1 ]
	then
		max=$((($min+$max)/2))
	elif [ $n -eq 2 ]
	then
		min=$((($min+$max)/2))
	else
		min=$avg
		max=$avg
	fi
done

echo "Magic Number is: $avg"
