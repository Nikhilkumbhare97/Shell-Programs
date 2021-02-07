#!/bin/bash

#constants
IS_PART_TIME=1;
IS_FULL_TIME=2;
EMP_RATE_PER_HR=20;
NUMBER_OF_WORKING_DAYS=30

#variable
totalsalary=0

for (( day=1; day<=$NUMBER_OF_WORKING_DAYS; day++ ))
do
	empCheck=$((RANDOM%3));
	case $empCheck in
			$IS_FULL_TIME)
				empHrs=8
				;;
			$IS_PART_TIME)
				empHrs=4
				;;
			*)
				empHrs=0
				;;
	esac

	salary=$(($empHrs*$EMP_RATE_PER_HR))
	totalsalary=$(($totalsalary+$salary))
done
	echo $totalsalary
