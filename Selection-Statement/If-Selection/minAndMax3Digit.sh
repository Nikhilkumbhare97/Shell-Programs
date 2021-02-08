#!/bin/bash -x

val1=$((RANDOM%900+100))
val2=$((RANDOM%900+100))
val3=$((RANDOM%900+100))
val4=$((RANDOM%900+100))
val5=$((RANDOM%900+100))
        echo val1=$val1 val2=$val2 val3=$val3 val4=$val4 val5=$val5

if [ "$val1" -gt "$val2" ] && [ "$val1" -gt "$val3" ] && [ "$val1" -gt "$val4" ] && [ "$val1" -gt "$val5" ]
then
max="$val1"
elif  [ "$val2" -gt "$val3" ] && [ "$val2" -gt "$val4" ] && [ "$val2" -gt "$val5" ]
then
max="$val2"
elif [ "$val3" -gt "$val4" ] && [ "$val4" -gt "$val5" ]
then
max="$val3"
elif [ "$val4" -gt "$val5" ]
then
max="$val4"
else
max="$val5"
fi

if [ "$val1" -lt "$val2" ] && [ "$val1" -lt "$val3" ] && [ "$val1" -lt "$val4" ] && [ "$val1" -lt "$val5" ]
then
min="$val1"
elif  [ "$val2" -lt "$val3" ] && [ "$val2" -lt "$val4" ] && [ "$val2" -lt "$val5" ]
then
min="$val2"
elif [ "$val3" -lt "$val4" ] && [ "$val4" -lt "$val5" ]
then
min="$val3"
elif [ "$val4" -lt "$val5" ]
then
min="$val4"
else
min="$val5"
fi

echo The max num is $max
echo The min num is $min
