clear
: '
Q. Write a shell script that takes the name of two files as arguments and performs the
following:
i. Displays the message :
“Displaying the contents of file :( first argument)”
and displays the contents page wise.
ii. Copies the contents of the first argument to second argument.
iii. Finally displays the message :
“File copied successfully.”
'
if test $# -lt 2
then
   echo "\n\t\t\tProper arguments are not provided.\n"
else
	if test -e $1 -a -e $2 -a -f $1 -a -f $2
	then
	    echo "Displaying the contents of file : \"$1\""
	    sleep 1
	    cat $1 | less
	    cp $1 $2
	    echo "File copied successfully."
	else
	    echo "\n\t\t\"$1\" is not a directory.\n"
	fi
fi
