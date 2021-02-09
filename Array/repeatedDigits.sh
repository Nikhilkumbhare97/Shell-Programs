#!/bin/bash -x

function palindrome(){
	local num1=$1
	local reverse=0
	while [ $num -gt 0 ]
	do
		a=`expr $num % 10 `
		num=`expr $num / 10 `
		reverse=`expr $reverse \* 10 + $a`
	done

	if [ $num1 -eq $reverse ]
	then
    		echo $num1
	fi
}

count=0
for (( num=10; num<=100; num++ ))
do
		if [ $num -ge 10 ]
		then
				palindrome1[((count++))]=$(palindrome $num)
		fi
done

echo ${palindrome1[@]}
