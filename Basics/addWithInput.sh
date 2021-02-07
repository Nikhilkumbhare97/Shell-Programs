#!/bin/bash -x

echo " enter the value of x :: "
read x
echo " enter the value of y :: "
read y
z=$(( $x + $y ))
echo $z
