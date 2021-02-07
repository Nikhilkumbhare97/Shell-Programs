#!/bin/bash -x

read -p "Enter Number :" n

table=0
result=`expr 2^$n | bc -l`
num=1
end=256

while [[ $num != $n ]]
do
        if [ $table -ne $result ] && [ $table -ne $end ]
        then
               table=`expr 2^$num | bc -l`
					((num++))
        			echo $table
			else
					((num++))
			fi
done


