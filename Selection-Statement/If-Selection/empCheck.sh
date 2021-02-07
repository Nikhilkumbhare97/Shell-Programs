#!/bin/bash -x

isPresent=1
empcheck=$((RANDOM%2))

if [ $empcheck -eq $isPresent ]
then
	echo Employee is present
else
	echo Employee is absent
fi
