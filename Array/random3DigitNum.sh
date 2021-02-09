#!/bin/bash

function max() {
	local secondLargest=0
	local largest=$1
	for (( val=1; val<$num; val++ ))
	do
			if [[ ${randomArray[$val]} -gt $largest ]]
			then
				secondLargest=$largest
				largest=${randomArray[$val]}
			elif [[ ${randomArray[$val]} -gt $secondLargest ]]
			then
					secondLargest=${randomArray[$val]}
			fi
	done
		echo $secondLargest
}

function min() {
   local secondSmallest=0
   local smallest=$1
   for (( val=1; val<$num; val++ ))
   do
         if [[ ${randomArray[$val]} -lt $smallest ]]
         then
            secondSmallest=$smallest
            smallest=${randomArray[$val]}
         elif [[ ${randomArray[$val]} -lt $secondSmallest ]]
         then
               secondSmallest=${randomArray[$val]}
         fi
   done
      echo $secondSmallest
}


num=0
while [ $num -ne 10 ]
do
   random=$(((RANDOM%899)+100))
   randomArray[((num++))]=$random
done
echo ${randomArray[@]}

max ${randomArray[@]}
min ${randomArray[@]}

