clear
rslt=`who | grep -c "^s"`

if test $rslt = 1
then
  who
else
   echo "No login name begins with \"s\""
fi
