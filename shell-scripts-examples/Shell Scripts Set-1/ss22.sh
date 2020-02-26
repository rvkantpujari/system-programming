clear
: '
Q. Write a shell script to accept a directory-name and display its contents. If input is not given then HOME directorys contents should be listed. (Make use of command line argument)
'
ar=$#
if test $ar -lt 1
then
	echo "Home Directory Contents:\n"
	ls $HOME
else
	if test -d $1
	then
		ls $1
	else
		echo "\n\t\t\t\"$1\" is not a directory.\n"
	fi
fi
