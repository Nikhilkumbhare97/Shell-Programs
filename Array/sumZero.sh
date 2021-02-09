#!/bin/bash -x

function sum() {
		num=0
		for (( a=0;a<$length; a++ ))
		do
				for (( b=$a+1;b<$length; b++ ))
				do
						for (( c=$b+1;c<$length; c++ ))
						do
								if [ $(( ${array[$a]} + ${array[$b]} + ${array[$c]} )) -eq 0 ]
								then
										NewArray[((num++))]=${array[$a]}
										NewArray[((num++))]=${array[$b]}
										NewArray[((num++))]=${array[$c]}
								else
										NewArray="Sum is Not equal to Zero"
								fi
						done
				done
		done
}

#array length is 3 here
length=3
for (( val=0; val<$length ; val++ ))
do
	read -p "Enter values " value
	array[$val]=$value
done
sum "${array[@]}"
echo "${NewArray[@]}"
