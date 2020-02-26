clear
: '
Q. Write a shell script that accepts two directory names from the command line and copies all the files of one directory to another. The script should do the following
-> If the source directory does not exist, flash a error message
-> If destination directory does not exist create it
-> Once both exist copy all the files from source directory to destination directory.
'
if test $# -eq 2
then
  if test -e $1 -a -e $2 -a -d $1 -a -d $2
  then
	cp -r ./$1/ $2
	echo "\n\n\t\tFiles and sub-directories of directory \"$1\", are"
	echo "\t\tsuccessfully copied to directory \"$2\"\n."
  else
	if test -e $1
	then
		mkdir $2
		cp -r ./$1/ $2
	echo "\n\n\t\tFiles and sub-directories of directory \"$1\", are"
	echo "\t\tsuccessfully copied to directory \"$2\"\n."
	else
		echo "\n\n\t\t\tSource Directory \"$1\" doesn't exist.\n"
	fi
  fi
else
  echo "\n\t\t\tInvalid number of arguments provided.\n"
fi
