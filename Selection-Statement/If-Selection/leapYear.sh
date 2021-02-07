#!/bin/bash -x

echo "Enter year (YYYY) : "
read  Y

if [ $((Y % 4)) -ne 0 ]
then
:
	elif [ $((Y % 100)) -eq 0 ]
	then
	isleap="true"
		elif [ $((Y % 400)) -eq 0 ]
		then
		:
		else
		isleap="true"
		fi
if [ "$isleap" -eq "true" ]
then
	echo "$Y is a leap year"
else
	echo "$Y is not a leap year"
fi
