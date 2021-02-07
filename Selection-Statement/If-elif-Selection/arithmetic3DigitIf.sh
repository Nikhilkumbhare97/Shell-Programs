#!/bin/bash -x

read -p "Enter num1 :" num1
read -p "Enter num2 :" num2
read -p "Enter num3 :" num3

op1=$(( $num1 + $num2 * $num3 ));
op2=$(( $num3 + $num1 / $num2 ));
op3=$(( $num1 % $num2 + $num3 ));
op4=$(( $num1 * $num2 + $num3 ));

#for Maximum
max=0
if [ $op1 -gt $op2 ] && [ $op1 -gt $op3 ] && [ $op1 -gt $op4 ]
then
	max=$op1
elif [ $op2 -gt $op3 ] && [ $op2 -gt $op4 ]
then
	max=$op2
elif [ $op3 -gt $op4 ]
then
	max=$op3
else
	max=$op4
fi
echo $max

#for Minimum
min=0
if [ $op1 -lt $op2 ] && [ $op1 -lt $op3 ] && [ $op1 -lt $op4 ]
then
   min=$op1
elif [ $op2 -lt $op3 ] && [ $op2 -lt $op4 ]
then
   min=$op2
elif [ $op3 -lt $op4 ]
then
   min=$op3
else
   min=$op4
fi
echo $min
