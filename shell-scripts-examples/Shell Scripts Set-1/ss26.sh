
: '
Q. Write a shell script that displays the following menu
-> List home directory
-> Date
-> Print working directory
-> Users logged in
Read the proper choice. Execute corresponding command. Check for invalid choice.
'
ch=0
while test $ch -ne 5
do
   clear
   echo "1) List home directory"
   echo "2) Date"
   echo "3) Print working directory"
   echo "4) Users logged in"
   echo "5) EXIT"
   echo "Please enter choice from above options: "
   read ch
   case $ch in
	1) echo "Listing home directory:" 
	   ls -1l $HOME ;;
	2) echo "Date: " `date` ;;
	3) echo "Print working directory: " `pwd` ;;
        4) echo "Users logged in: "
	   w ;;
        5) exit ;;
	*) echo "Invalid choice entered."
   esac
   read x
done
