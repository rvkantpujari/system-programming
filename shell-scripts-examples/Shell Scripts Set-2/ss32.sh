clear
for i in `ls -lt`
do
   if test -f $i 
   then
	echo "Last modified file in the current directory is '$i'."
	break		
   fi
done
