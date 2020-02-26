clear
#method1
files=`find $1 -type f | wc -l`
dirs=`find $1 -type d | wc -l`
dirs=`expr $dirs - 1`
echo "Total files are : $files"
echo "Total directories are : $dirs"
#method2
files=`ls -l | grep -c "^-"`
dirs=`ls -l | grep -c "^d"`
echo "Total files are : $files"
echo "Total directories are : $dirs"
