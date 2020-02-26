clear
cnt=0
if test $# -ne 0
then
	echo -n "Please enter the word you want to search in file(s) : "
	read wrd
	for i in $*
	do
	  rslt=`fgrep -ci $wrd $i`
	  if test $rslt -ne 0
	  then
		echo "Word found at line:\n"
		`echo fgrep -ni $wrd $i`
		echo "\nFile '$i' Contents are: "
		cat $i
		read x
		echo "\n\n"
		cnt=1
	  fi
	done
	if test $cnt -eq 0
	then
		echo "Word '$wrd' not found in file(s)."
	fi
elif test $# -gt 1
then
	echo "Search one word at a time."
else
	echo "\n\n\t\tNo filename was passed as argument.\n"
	read x
	clear
fi
