clear
if test -f $1 -a -e $1
then
    cat $1
else
    echo "\n\t\tFile does not exist or is not ordinary, cannot display.\n"
fi
