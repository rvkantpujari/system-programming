clear
if test $# -ne 0
then
	if test $1 = `w -h | cut -d " " -f1`
	then
	    echo "Yes, $1 is logged in."
	else
	    echo "No, $1 is not logged in."
	fi
else
	echo "NO argument passed."
fi
