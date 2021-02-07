#!/bin/bash -x

read -p "enter date: " date
read -p "enter month: " month

if [ $month -ge 3 -a $month -le 6 ]
then
dlimit=$((30 + (month % 2)))
	if [ $date -ge 1 -a $date -le $dlimit ]
	then
	combo=$(((month * 100) + date))
		if [ $combo -gt 320 -a $combo -lt 620 ]
		then
		res="true"
		else
		res="false"
		fi
	else
	res="false"
	fi
else
res="false"
fi

echo "$month/$date $res"
