
: '
Q. Write a shell script that Combine two files in the third file horizontally and vertically.
'
clear

echo "Combining contents of files  \"f1.sh\" and \"f2.sh\" in the this file horizontally.\n" >> f3.sh
cat f1.sh >> f3.sh
cat f2.sh >> f3.sh

echo "\nCombining contents of files  \"f1.sh\" and \"f2.sh\" in the this file vertically.\n" >> f3.sh
paste f1.sh f2.sh | cat >> f3.sh

echo "Combining two files \"f1.sh\" and \"f2.sh\" in the third file horizontally and vertically."
