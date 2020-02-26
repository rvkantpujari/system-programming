clear
echo "Total number of users : " `ls -l /etc/ passwd | wc -l`
echo "\nUsers currently logged in :"
who -q
