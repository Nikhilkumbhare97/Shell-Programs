#!/bin/bash -x

echo 1. Feet to Inch
echo 2. Feet to Meter
echo 3. Inch to Feet
echo 4. Meter to Feet

echo "Select Conversion :"
read conv

case $conv in
		1)
			read -p "Enter feets :" feet
			inches=`expr $feet*12 | bc -l`
			;;
		2)
			read -p "Enter feets :" feet
			meters=`expr $feet*0.3048 | bc -l`
			;;
     		3)
        		read -p "Enter Inches :" inch
         		feets=`expr $inch/12 | bc -l`
         		;;
      		4)
         		read -p "Enter meters :" meter
         		feets=`expr $meter/0.3048 | bc -l`
         		;;
		*)
			echo Conversion Not Available
			;;
esac

