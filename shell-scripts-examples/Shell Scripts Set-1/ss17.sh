clear
: '
Q. Write a shell script that accepts 2 filenames and checks if both exists; if both exist then append the content of the second file into the first file.
'

if test $# -eq 2
then
	if test -e $1 -a -e $2 -a -f $1 -a -f $2
	then
		cat $2 >> $1
		echo "\n\tContents of file \"$2\" is appended to file \"$1\".\n"
	fi
else
	echo "Invalid arguments passed."
fi
