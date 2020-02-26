clear
: '
Q. Write a shell script to display the following menu and acts accordingly:
i. Calendar of the current month and year.
ii. Display “Good Morning/Good Afternoon/Good Evening” according to the
current login time.
iii. User name, Users home directory.
iv. Terminal name, Terminal type.
v. Machine name.
vi. No. of users who are currently logged in; List of users who are currently
logged in.
'
echo "1. Calendar of current month\n"
cal

time=`w | head -1 | cut -d " " -f2`
hr=`echo $time | cut -d ":" -f1`
min=`date +%M`
echo -n "2. "
if test $hr -lt 12
then
    echo "Good Morning"
elif test $hr -le 16
then
    echo "Good Afternoon"
elif test $hr -le 19
then
    echo "Good Evening"
elif test $hr -le 23 -a $min -le 59
then
    echo "Good Night"
fi
#echo "\n3. Username\t  : " `whoami`
#echo "\n3. Username\t  : " $USER
echo "\n3. Username\t  : " $USERNAME "\n   Home directory : " $HOME
echo "\n4. Terminal name: " $SHELL "\n   Terminal type: " tty
echo "\n5. Machine name : " `uname -m`
echo "\n6. Total no. of `who -q | tail -1` are currently Logged in."
echo "\n   List of users currently logged in:\n\n  " `who` "\n"
