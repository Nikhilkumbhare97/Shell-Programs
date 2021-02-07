#!/bin/bash -x

isPresent=1
empCheck=$((RANDOM%2));

if [ $empCheck -eq $isPresent ]
then
		empRatePerHr=20
		empHrs=8
		salary=$(($empHrs*$empRatePerHr))
else
		salary=0
fi
