#!/bin/bash -x

echo "Enter date (DD/MM/YYYY): "
read date

month=`echo $date | awk -F/ '{print $1}'`;
date1=`echo $date | awk -F/ '{print $2}'`;
year=`echo $date | awk -F/ '{print $3}'`;

year1=$(( $year - (14 - $month ) /12 )) ;
temp=$(( $year1 + $year1/4 - $year1/100 + $year1/400 )) ;
month1=$(( $month + 12 * (( 14 - $month ) /12 ))) ;
day=$((( $date + $temp + 31 * $month1/12 ) %7 - 1 )) ;

if [ $day -eq 0 ]
	then
			echo "Sunday"
elif [ $day -eq 1 ]
   then
         echo "Monday"
elif [ $day -eq 2 ]
   then
         echo "Tuesday"
elif [ $day -eq 3 ]
   then
         echo "Wednesday"
elif [ $day -eq 4 ]
   then
         echo "Thursday"
elif [ $day -eq 5 ]
   then
         echo "Friday"
elif [ $day -eq 6 ]
   then
         echo "Saturday"

fi
