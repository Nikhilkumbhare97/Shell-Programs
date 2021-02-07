#!/bin/bash -x

read -p "Enter number 1,10,100,etc upto lakhs only :" num

case $num in
		1)
			echo Unit
			;;
      10)
         echo Tens
         ;;
      100)
         echo Hundreds
         ;;
      1000)
         echo Thousands
         ;;
      10000)
         echo Ten Thousands
         ;;
      100000)
         echo Lakhs
         ;;
      1000000)
         echo Ten Lakhs
         ;;
      *)
         echo Check Num
         ;;

esac

