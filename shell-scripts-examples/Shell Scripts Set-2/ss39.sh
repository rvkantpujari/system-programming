clear
echo "Filename\tSize\tDate\t\t\t\t\tProtection\tOwner"
for f in `ls -l`
do
  if test -f $f
  then
	echo -n `stat -c "%n" $f` "\t"
	echo -n `stat -c "%s" $f` "\t"
	echo -n `stat -c "%y" $f` "\t"
	echo -n `stat --format "%A" $f` "\t"
	echo `stat --format "%U" $f`
  fi  
done

