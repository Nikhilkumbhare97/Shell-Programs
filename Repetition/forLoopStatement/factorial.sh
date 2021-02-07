#!/bin/bash -x

read -p "Enter Number: " n

output=1
for (( num=1; num<=$n; num++ ))
do
		output=$(($output*$num))
done

echo $output
