#!/bin/bash -x

Head=1
Tail=1

while [[ $Head -le 11 ]] && [[ $Tail -le 11 ]]
do
		val=$((RANDOM%2))

		if [ $val -eq 0 ]
		then
				((Head++))
		else
				((Tail++))
		fi
done


if [ $Head -eq 12 ]
then
     echo Head Wins 11 Times
else
     echo Tails Wins 11 Times
fi

