#!/bin/bash -x

function degFarhenite() {
		if [ $degC -ge 1 -a $degC -le 100 ]
		then
				degF=$((($degC*9/5)+32));
		else
				echo "Enter Temp in Range 0-100 degree Celsius"
		fi
}

function degCelsius() {
      if [ $degF -ge 32 -a $degF -le 212 ]
      then
            degC=$((($degF-32)*5/9));
      else
            echo "Enter Temp in Range 32-212 degree Farhenite"
      fi
}

read -p "1. for Celsius to Farhenite 2. for Farhenite to Celsius" choose

case $choose in
   1)
		 read -p "Enter Temprature in Celsius :" degC
         $( degFarhenite )
         ;;
   2)
	    read -p "Enter Temprature in Farhenite :" degF
         $( degCelsius )
         ;;
	*)
			echo error
			;;
esac

