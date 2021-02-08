#!/bin/bash -x

read -p "Enter Number :" n

for (( num=1; num<=$n; num++ ))
do
		number=0
		for (( num1=1; num1<=$num; num1++ ))
		do
				if [ $(($num%$num1)) -eq 0 ] && [ $(($n%$num)) -eq 0 ]
				then
						((number++))
				fi
		done
		if [ $number -eq 2 ]
		then
				echo $num
		fi
done

