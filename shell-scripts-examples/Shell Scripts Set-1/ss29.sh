
: '
Q. Write a shell script to delete all the spaces from a given file.
'
clear

if test $# -eq 1
then
	cat $1 | tr -d '[:space:]' | tee $1
else
	echo "Invalid argument(s) provided."
fi
