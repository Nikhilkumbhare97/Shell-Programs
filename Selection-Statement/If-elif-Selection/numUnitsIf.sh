#!/bin/bash -x

read -p "Enter number 1,10,100,1000,etc :" num

if [ $num -lt '10' ]
then
		echo Unit Number
elif [ $num -lt '100' ]
then
      echo Tens Number
elif [ $num -lt '1000' ]
then
      echo Hundreds Number
elif [ $num -lt '10000' ]
then
      echo Thousands Number
elif [ $num -lt '100000' ]
then
      echo lakhs Number
else
	echo error
fi
