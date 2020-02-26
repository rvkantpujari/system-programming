clear
: '
Q. Write a script to find the complete path for any file.
'
if test $# -eq 1 -a -f $1
then
  echo -n "\tComplete path for file \"$1\":\n\n"
  echo "Method 1 : "
  find $HOME -type f -name $1
  echo "Method 2 : "
  locate $1
  echo "Method 3 : "
  ls $PWD/$1
else
  echo "Invalid argument provided."
fi
