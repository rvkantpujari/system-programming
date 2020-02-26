clear
hr=`date +%H`
min=`date +%M`
echo -n "\n\n\n\t\t\t\t"
if test $hr -lt 12
then
    echo "Good Morning"
elif test $hr -eq 12 -a $min -eq 0
then
    echo "Good Noon"
elif test $hr -le 16
then
    echo "Good Afternoon"
elif test $hr -le 19
then
    echo "Good Evening"
elif test $hr -le 23 -a $min -le 59
then
    echo "Good Night"
elif test $hr -le 0 -a $min -le 0
then
    echo "Midnight! Sweet Dreams."
fi
echo -n "\n\n"
