
: '
Q. Write a shell script to display the following menu for a particular file :
i. Display all the words of a file in ascending order.
ii. Display a file in descending order.
iii. Toggle all the characters in the file.
iv. Display type of the file.
v. Display a file in reverse order.
'
ch=0
while test $ch -ne 6
do
  clear
  echo "Press 1 to display all the words of a file in ascending order."
  echo "Press 2 to display a file in descending order."
  echo "Press 3 to toggle all the characters in the file."
  echo "Press 4 to display type of the file."
  echo "Press 5 to display a file in reverse order."
  echo "Press 6 to EXIT"
  echo -n "Please enter your choice from above options:"
  read ch
  if test $ch -ne 6
  then
    echo -n "Please enter the filename:"
    read fn
  fi
  case $ch in
      1) if test -e words.sh
	 then
		rm words.sh
	 fi
	 for i in `cat $fn`
	 do
	   echo $i >> words.sh
	 done
	 sort -r words.sh
	 ;;
      2) if test -e words.sh
	 then
		rm words.sh
	 fi
	 for i in `cat $fn`
	 do
	   echo $i >> words.sh
	 done
	 sort words.sh
	 ;;
      3) cat $fn | tr "[a-z][A-Z]" "[A-Z][a-z]" ;;
      4) echo -n "File $fn type : "
         file -b $fn ;;
      5) echo "\n\t\t\t-----Original Contents-----\n";cat $fn;echo "\t\t-----After Reversing the contents-----"; tac $fn;;
      6) clear
	 exit;;
      *) echo "Invalid Choice.";;
  esac
  read x;
done
