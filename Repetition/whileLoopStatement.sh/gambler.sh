#!/bin/bash -x

Money=100
Goal=200
win=0
lose=0

while [ $Money -lt $Goal ] && [ $Money -gt 0 ]
do
		bet=$((RANDOM%2))
		if [ $bet -eq 0 ]
		then
			((Money++))
			((win++))
		else
			((Money--))
			((lose++))
		fi
done

if [ $Money -eq 200 ] && [ $Money -eq 0 ]
then
	echo Gambler Has Won
else
	echo Gambler Has Lose
fi

echo Money=$Money
echo Win=$win
echo Lose=$lose
