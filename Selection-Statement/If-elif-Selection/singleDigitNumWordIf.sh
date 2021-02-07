#!/bin/bash -x

read -p "Enter Single Digit Value : " singleDigit


if [ $singleDigit -eq 0 ]
then
		echo zero
elif [ $singleDigit -eq 1 ]
then
      echo one
elif [ $singleDigit -eq 2 ]
then
      echo two
elif [ $singleDigit -eq 3 ]
then
      echo three
elif [ $singleDigit -eq 4 ]
then
      echo four
elif [ $singleDigit -eq 5 ]
then
      echo five
elif [ $singleDigit -eq 6 ]
then
      echo six
elif [ $singleDigit -eq 7 ]
then
      echo seven
elif [ $singleDigit -eq 8 ]
then
      echo eight
elif [ $singleDigit -eq 9 ]
then
      echo nine
else
		echo You have not enter Single Digit
fi
