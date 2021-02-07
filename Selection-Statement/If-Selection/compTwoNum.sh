#!/bin/bash -x

var1=10
var2=20
if [ $var1 -gt $var2 ]
then
	echo $var1 is greater than $var2
else
	echo $var2 is greater than $var1
fi
