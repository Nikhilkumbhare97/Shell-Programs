#!/bin/bash -x

val1=$((RANDOM%89+10))
val2=$((RANDOM%90+10))
val3=$((RANDOM%90+10))
val4=$((RANDOM%90+10))
val5=$((RANDOM%90+10))

	echo val1=$val1 val2=$val2 val3=$val3 val4=$val4 val5=$val5

sum=$(($val1 + $val2 + $val3 + $val4 + $val5))

	echo sum=$sum

avg=$(($sum/5))

	echo avg=$avg
