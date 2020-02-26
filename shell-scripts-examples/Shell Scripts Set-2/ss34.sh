clear
: '
Q34. Write a shell script to display the calendar in the following manner:
i. Display the calendar of months m1 and m2 by ‘CAL m1, m2’ command file.
ii. Display the calendar of the months from m1 to m2 by ‘CAL m1-m2’ command file.
'
echo "Please enter your choice from given options:"
echo "1 to display the calendar of months m1 and m2 by ‘CALm1,m2’ command file."
echo "2 to display the calendar of the months from m1 to m2 by ‘CALm1-m2’ command file."
echo "Your Choice: "
read choice

if test $choice -eq 1
then
	sh "CAL m1,m2"
elif test $choice -eq 2
then
	sh "CAL m1-m2"
else
	echo "Invalid Option Entered."
	read x
	clear
fi
