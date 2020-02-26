clear
: '
Q. Write a shell script to get all files of home directory and rename them if their names start with c.
				Newname = oldname111
'
flag=0

for i in `ls $HOME/c*.*`
do
	extpos=`echo $i | grep -bo "\." | tail -1`
	extpos=`echo $extpos | cut -d":" -f1`	
	extpos=`expr $extpos + 1`
	len=`echo $i | wc -m`
	len=`expr $len - 1`
	ext=`echo $i | cut -c$extpos-$len`
	fname=`basename $i $ext`
	fname=$fname"111"
	mv $i $HOME/$fname$ext
	flag=1
done

if test $flag -eq 1
then
	echo "File(s) successfully renamed."
	echo ""
fi
