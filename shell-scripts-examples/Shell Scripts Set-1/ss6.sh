clear
if test -e $1
then
    echo "Last modification time of FILE \"$1\" is `date +%T -r $1`"
else
    echo "File doesn't exist"
fi
