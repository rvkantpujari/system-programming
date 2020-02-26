clear
: '
Q. Write a shell script that calculates the number of ordinary and directory files in your current working directory.
'
files=0 #`find . -type f | wc -l`
dirs=0


for i in `ls -l`
do
#	echo $i
	if test -f $i
	then
		files=`expr $files + 1`
	elif test -d $i
	then
		dirs=`expr $dirs + 1`
	fi
done
echo "Total Ordinary files       : "$files
echo "Total Ordinary directories : "$dirs
