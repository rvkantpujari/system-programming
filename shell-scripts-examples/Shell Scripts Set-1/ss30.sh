clear
if test $# -eq 1
then
	d=`date -d $1 +%a | tr '[:lower:]' '[:upper:]'`
	if test $d = 'SAT' -o $d = 'SUN' 
	then
		echo "It's weekend and day is" `date -d $1 +%A`.
	else
		echo "It's weekday and day is" `date -d $1 +%A`.
	fi
else
	echo "Date not given as argument."
fi
