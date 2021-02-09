#!/bin/bash -x

num=0
while [ $num -ne 10 ]
do
   random=$(((RANDOM%899)+100))
   randomArray[$num]=$random
   ((num++))
done
echo ${randomArray[@]}

for ((i=0; i<10; i++ ))
do
	for((j=0; j<10-i-1; j++ ))
	do
			if [ ${randomArray[$j]} -ge ${randomArray[$((j+1))]} ]
			then
					temp=${randomArray[j]}
					randomArray[$j]=${randomArray[$((j+1))]}
					randomArray[$((j+1))]=$temp
			fi
	done
done

echo "Sorted order Array :" ${randomArray[@]}
echo "Second Largest :" ${randomArray[1]}
echo "Second Smallest :" ${randomArray[8]}
