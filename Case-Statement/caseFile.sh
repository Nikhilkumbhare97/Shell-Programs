#!/bin/bash -x

for filename in $(ls)
do
	# Take extension available in a filename
	ext=${filename##*\.}
	case "$ext" in
		java)
				echo "$filename : Java Source File"
				;;
		o)
				echo "$filename : Object File"
				;;
		sh)
				echo "$filename : Shell Script"
				;;
		txt)
				echo "$filename : Text File"
				;;
		*)
				echo "$filename : Not Processed"
				;;
	esac
done
