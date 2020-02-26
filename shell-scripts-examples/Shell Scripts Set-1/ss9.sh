clear
#(where only user has 'x' permission) : find -executable
#find -perm /u=x,g=x,o=x -type f
:'
flag=0
for file in `ls $1`
do
   if test -x $file
   then
      echo $file
      flag=1
      break
   fi
done
if test $flag -ne 1
then
	echo "NO executable files in current directory"
fi
'
