#!/bin/bash -x

read -p "Enter num 1-7 :" day

case $day in
	1)
		echo Sunday
		;;
   2)
      echo Monday
      ;;
   3)
      echo Tuesday
      ;;
   4)
      echo Wednesday
      ;;
   5)
      echo Thursday
      ;;
   6)
      echo Friday
      ;;
   7)
      echo Saturday
      ;;
   *)
	  echo Check Entered Num
		;;

esac
