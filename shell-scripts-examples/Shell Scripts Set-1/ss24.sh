clear
: '
Q. Write a shell script that takes two filename as arguments. It should check whether the contents of two files are same or not, if they are same then second file should be deleted.
'

if test -e $1 -a -e $2 -a -f $1 -a -f $2
then
	rslt=`diff -s $1 $2 | grep -oc "identical"`
	if test $rslt -eq 1
	then
	    rm $2
	    echo "\n\tFile \"$2\" removed/deleted."
	    echo "\n\tContents of file1 \"$1\" and file2 \"$2\" are same.\n"
	else
	    echo "\n\tContents of file1 \"$1\" and file2 \"$2\" are not same.\n"
	fi
else
	echo "Invalid Arguments."
fi

: '
if test -e $1 -a -e $2 -a -f $1 -a -f $2
then
	op=`diff $1 $2`
	rslt=`echo $op | egrep ">|<" | wc -l`
	if test $rslt -eq 0
	then
	  rm $2
	  echo "\n\tFile \"$2\" removed/deleted."
	  echo "\n\tContents of file1 \"$1\" and file2 \"$2\" are same."
	else
	  echo "\n\tContents of file1 \"$1\" and file2 \"$2\" are not same.\n"
	fi
else
	echo "Invalid Arguments."
fi
'
