#!/bin/bash -x

function palindrome(){
	local number=$1
	local reverse=0
	while [ $num -gt 0 ]
	do
		a=`expr $num % 10 `
		num=`expr $num / 10 `
		reverse=`expr $reverse \* 10 + $a`
	done
	echo $reverse
	if [ $number -eq $reverse ]
	then
    		echo "Number is palindrome"
	else
        	echo "Number is not palindrome"
	fi
}

read -p "Enter number :" num

palindrome1=$( palindrome $num )
