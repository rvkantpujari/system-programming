clear
: '
Q. Check the output of the following commands:date, ls, who, cal, ps, wc, cat, uname, pwd, mkdir, rmdir, cd, cp, rm, mv, diff, chmod, grep, sed, head, tail,cut, paste, sort, find, man.
'

ch=0
while test $ch -ne 26
do
   clear
   echo "Options:"
   paste ss1menu1.sh ss1menu2.sh
   echo -n "\n\nPlease enter your choice from above options: "
   read ch
   case $ch in 
	1)  date ;;
	2)  ls --color=always;;
	3)  who ;;
	4)  cal ;;
	5)  ps ;;
	6)  wc ss1.sh;;
	7)  cat ss1.sh;;
	8)  uname ;;
	9)  pwd ;;
	10) echo Please enter name of directory : 
	    read dirnm
	    mkdir $dirnm
	    echo "Directory named \"$dirnm\" created successfully.";;
	11) echo Please enter name of directory : 
	    read dirnm
	    rmdir $dirnm
	    echo "Directory named \"$dirnm\" deleted successfully.";;
	12) echo Please enter the path you want to navigate to
	    read path
	    cd $path
	    echo "Now your current working directory is" `pwd`
	    sleep 3
	    echo "\nMoving back to old PWD."
	    cd $OLDPWD 
	    echo "Now your current working directory is" `pwd`;;
	13) echo "1 To copy contents of this file to temp.dat"
	    echo "2 To copy this file into parent directory"
	    read ch
	    if test $ch -eq 1
	    then
		touch temp.dat
		cp ss1.sh temp.dat
		echo "Contents of File \"ss1.sh\" successfully copied to file \"temp.dat\"."
	    elif test $ch -eq 2
	    then
		cp ss1.sh ..
		echo "File \"ss1.sh\" successfully copied to parent directory." 
	    fi;;
	14) touch temp.dat
	    echo "We have a temporary file \"temp.dat\"."
	    rm temp.dat
	    echo "File \"temp.dat\" successfully removed/deleted.";;
	15) touch temp.dat
	    mv temp.dat ..
	    echo "Temporary file \"temp.dat\" moved to the parent directory.";;
	16) diff f1.sh f2.sh;;
	17) echo "r=4 , w=2, x=1 or sum"
	    read per
	    touch temp.sh
	    chmod $per temp.sh
	    ls -l temp.sh;;
	18) echo "please enter a string you want to search in file ss1.sh: "
	    read str
	    grep $str ss1.sh;;
	19) echo "Please enter total number of lines (display from top) "
	    read lines
	    head -$lines ss1.sh;;
	20) echo "Please enter total number of lines (display from bottom) "
	    read lines
	    tail -$lines ss1.sh;;
	21) echo "We have a string \"ABCD EFGH\""
	    echo "1 by delimiter [space]"
	    echo "2 by character"
	    read ch
	    if test $ch -eq 1
	    then
		touch temp.sh
		echo "ABCD EFGH" | cut -d " " -f1
	    elif test $ch -eq 2
	    then
		echo "ABCD EFGH" | cut -c2-6
 	    fi;;
	22) paste f1.sh f2.sh;;
	23) sort -d f1.sh;;
	24) find -type f;;
	25) echo "Please enter a command name : "
	    read cmd
	    man $cmd;;
	26) clear
	    exit;;
	*)  ch=0
	    echo "Invalid Choice Entered." ;;
   esac
   read a
done




: '

cmddate()
{
date
date -d 12:12:12  #hr:min:sec  # -d=STRING
date -R #rfc format
date -r ss1.sh #reference (last modification time of file)
date -u #UTC date time
echo Weekday `date +%a`
sleep 0.5
echo Weekday `date +%A`
sleep 0.5
echo Month `date +%b`
sleep 0.5
echo Month `date +%B`
sleep 0.5
date +%c
sleep 0.5
echo Century `date +%C`
sleep 0.5
echo Hour `date +%H`
sleep 0.5
echo Minute `date +%M`
sleep 0.5
echo Seconds `date +%S`
sleep 0.5
echo "Month(2)" `date +%m`
sleep 0.5
echo "Year(2)" `date +%y`
sleep 0.5
echo "Year(4)" `date +%Y`
sleep 0.5
read x
}

cmdls()
{
 echo "List out files and directories"
 ls
 sleep 1.5
 echo "list out all, including hidden files files and directories"
 ls -a  # all, including hidden files
 sleep 1.5
 echo "almost-all, excluding . and .."
 ls -A  # almost-all, excluding . and ..
 sleep 1.5
 echo "author of each file"
 ls --author #author of each file
 sleep 1.5
 echo "sort by ctime, newest first"
 ls -c # sort by ctime, newest first
 sleep 1.5
 echo "Color of listed files/directories."
 ls --color=auto # always (default), auto, never
 sleep 1.5
 echo "Long-listing format"
 ls -l # long-listing format
 sleep 1.5
 echo "reverse order while sorting"
 ls -r # reverse order while sorting
 sleep 1.5
 echo "recursive (list subdirectories recursively)"
 ls -R # recursive (list subdirectories recursively)
 echo "allocated size of each file, in blocks"
 sleep 1.5
 ls -s # allocated size of each file, in blocks
 sleep 1.5
 echo "sort by file size, largest first"
 ls -S # sort by file size, largest first
 sleep 1.5
 echo "sort by modification time, newest first"
 ls -t # sort by modification time, newest first
 sleep 1.5
 echo "list one file per line"
 ls -1 # list one file per line
 sleep 1.5
 read x
}

'
