clear
a=`echo $1 | cut -c1`

if test $# -ne 0
then
	echo "File(s) starting with '$a' are :\n"
	for f in `ls -l $a*`
	do
	  if test -f $f
	  then
		echo $f
	  fi  
	done
else
	echo "NO filename is passes as argument."
fi
