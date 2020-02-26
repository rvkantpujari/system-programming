clear
ch=1
while test $ch -ne 6
do
   clear
   echo "1 Display the contents of the file sorted by marks in descending order."
   echo "2 Display the names of students in alphabetical order ignoring the case."
   echo "3 Display students according to their roll nos."
   echo "4 Sort file according to the second field and save it to file ‘names’."
   echo "5 Display the list of students who scored between 70 and 80."
   echo "Press 6 to EXIT."
   echo -n "\nPlease enter your choice from above options: "
   read ch
   if test $ch -eq 6
   then
	clear
	exit
   elif test $ch -eq 1
   then
	smark=`cat stu.sh | sort -t ":" -k 3  -nr`
	for i in $smark
	do
	  echo $i >> srtstu.sh
	done
	echo "Rollno:Name:Marks"
	cat srtstu.sh
	read x
	rm srtstu.sh
   elif test $ch -eq 2
   then
	snm=`sort -t ":" -k 2 -i stu.sh`
	for i in $snm
	do
	  echo $i >> srtstu.sh
	done
	echo "Name"
	cat srtstu.sh | cut -d ":" -f2
	read x
	rm srtstu.sh
   elif test $ch -eq 3
   then
	#echo `sort -t ":" -k 1 -n stu.sh`
	srn=`sort -t ":" -k 1 -n stu.sh`
	for i in $srn
	do
	  echo $i >> srtstu.sh
	done
	echo "Rollno:Name:Marks"
	cat srtstu.sh
	read x
	rm srtstu.sh
   elif test $ch -eq 4
   then
	snm=`sort -t ":" -k 2 -i stu.sh`
	for i in $snm
	do
	  echo $i >> names
	done
	echo "Rollno:Name:Marks"
	cat names
	read x
	rm names
   elif test $ch -eq 5
   then
	smark=`cat stu.sh | sort -t ":" -k 3  -n`
	echo $smark
	for i in $smark
	do
	  echo $i >> srtstu.sh
	done
	smark=`cat srtstu.sh | cut -d ":" -f3 | egrep "70|71|72|73|74|75|76|77|78|79|80" -wn`
	for i in $smark
	do
	  echo $i >> stu70-80.sh
	done
	fl=`head -1 stu70-80.sh | cut -d ":" -f1`
	ll=`tail -1 stu70-80.sh | cut -d ":" -f1`
	#rm stu70-80.sh
	while test $fl -le $ll
	do
	  cat srtstu.sh | head -$fl | tail -1
	  fl=`expr $fl + 1`
	done
	#rm srtstu.sh
	read x
   else
	echo "Invalid Option Entered."
   fi
done
