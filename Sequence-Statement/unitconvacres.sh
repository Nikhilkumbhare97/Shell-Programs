#!/bin/bash -x

length=60
width=40
#conversion square meter to square feet
conv=10.7639
convarea=`expr $length*$width/$conv | bc -l`
echo "area of rectangular plot of 60ft by 40ft in square meter is : $convarea"
#area for 25 such plots
totalarea=`expr $convarea*25 | bc -l`
echo "total area of 25 plots in square meters is : $totalarea"
#conversion square meter to acres
conv1=4046.86
convarea1=`expr $totalarea/$conv1 | bc -l`
echo "totalarea of 25 plots in acres is : $convarea1"

