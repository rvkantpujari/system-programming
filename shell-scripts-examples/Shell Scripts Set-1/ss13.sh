clear
: '
Q. Write a shell script that takes a filename from the user and checks whether it is a directory file or not.
-> If it is a directory, then the script should display the contents of
the directory.
-> If it is not a directory file then script should display the message:
"File is not a directory file"
'
if test -d $1
then
    #method1
    #find $1 -type d,f
    #method2
    ls $1
else
    echo "\n\t\tFile \"$1\" is not a directory.\n"
fi
