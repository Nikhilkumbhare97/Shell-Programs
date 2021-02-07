#!/bin/bash

length=60
width=40
#conversion square meter to square feet
conv=10.7639
convarea=`expr $length*$width/$conv | bc -l`
echo "area of rectangular plot of 60ft by 40ft in meter is : $convarea"

