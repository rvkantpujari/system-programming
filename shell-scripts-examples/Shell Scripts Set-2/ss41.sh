clear
if test $# -ne 0
then
	cat $1 | tr "[:lower:][:upper:]" "[:upper:][:lower:]"
else
	echo "NO filename is passes as argument."
fi
