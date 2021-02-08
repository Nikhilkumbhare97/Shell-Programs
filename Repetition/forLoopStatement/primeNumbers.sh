#!/bin/bash -x

echo "For Prime Number In Some Range"
read -p "Enter Start Number :" n1
read -p "Enter End Number :" n2

for (( num1=(($n1+1)); num1<$n2; num1++ ))
do
		number=0
		for (( num2=1; num2<=$num1; num2++ ))
		do
   			if [ $(($num1%$num2)) -eq 0 ]
   			then
      				((number++))
   			fi
		done

		if [ $number -eq 2 ]
		then
      	echo $num1
		else
				((number++))
		fi
done
