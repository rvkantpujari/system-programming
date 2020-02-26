clear
: '
Q. Write a shell script that displays the following menu and acts accordingly
1. Concatenates two strings
2. Renames a file
3. Deletes a file.
4. Copy the file to specific location
'
ch=0
while test $ch -ne 5
do
  clear
  echo 1. Concatenates two strings
  echo 2. Renames a file
  echo 3. Deletes a file.
  echo 4. Copy the file to specific location
  echo 5. Exit
  echo -n "\nPLease enter your choice from above options: "
  read ch
  case $ch in
     1) echo "please enter string1 :"
	read str1
	echo "please enter string2 :"
	read str2
	echo "Concatenated string : " $str1 $str2;;
     2) echo "please enter file1's name :"
	read f1
	echo "please enter file2's name :"
	read f2
	if test -f $f1 -a -f $f2
	then
		mv $f1 $f2
		echo "File1 \"$f1\" successfully renamed to \"$f2\"."
	else
		echo "Rename operation unsuccessful."
	fi;;
     3) echo "please enter filename :"
	read f
	if test -f $f
	then
		rm $f
		echo "File \"$f\" successfully deleted."
	else
		echo "Delete operation unsuccessful."
	fi;;
     4) echo "please enter source of file:"
	read src
	echo "please enter destination of file:"
	read des
	if test -e $src -a -e $des
	then
		echo "please enter file1's name :"
		read f1
		echo "please enter file2's name :"
		read f2
		if test -e $src/$f1 -a -e $des/$f2
		then
			cp $src/$f1 $des/$f2
			echo "File \"$src$f1\" successfully copied to location \"$des$f2\"."
		else
			echo "Copy operation unsuccessful."
		fi
	else
		echo "INVALID source or destination."
	fi;;
     5) clear; exit;;
  esac
  read tmp
done

