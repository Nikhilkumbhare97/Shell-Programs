#!/bin/bash -x

echo " enter the value of inch :: "
read inch
val1=1
feets=$val1"ft"
val2=12
inches=$val2"in"
echo $feets - $inches
unitconv=`expr $val1*$inch/$val2 | bc -l`
echo $unitconv"ft"
