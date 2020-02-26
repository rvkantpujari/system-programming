clear
: '
Q. Write a shell script that takes a filename as an argument and checks if the file
exists and is executable.
-> If the file is executable then the shell script should display the message:
“File exists”
-> If the file does not exists and is not executable then the script should
display the message: “File does not exist or is not executable.”
'

args=$#
if test $args -eq 1
then
	if test -e $1 -a -x $1
	then
		echo "File exists"
	else
	    echo "File does not exist or is not executable."
	fi
else
	echo "\n\n\t\t\t\tInvalid number of arguments passed.\n"
fi
