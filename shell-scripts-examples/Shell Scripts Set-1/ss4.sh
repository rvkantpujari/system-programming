clear
: '
Q. Write a shell script to execute following commands
1. How would u display the hidden files?
2. How delete directory with files?
3. How would user can do interactive copying?
4. How would user can do interactive deletion of files?
5. Explain two functionality of “mv” command with example?
'
echo "1. How would u display the hidden files?"
echo "Using command : \"ls -a\""
ls -a
read x

mkdir -p acopy/abc/xyz
echo "2. How delete directory with files?"
echo "Using command : rm -ri directoryname"
rm -ri acopy
read x

mkdir -p a/b/c/d/e
echo "3. How would user can do interactive copying?"
echo "Using command : cp -i ss1.sh acopy"
cp -i ss1.sh acopy
read x

echo "4. How would user can do interactive deletion of files?"
echo "Using command : rm -i ./acopy/ss1.sh"
rm -i ./acopy/ss1.sh
read x

echo "5. Explain two functionality of “mv” command with example?"
echo "\nWe can use \"mv\" command in two ways:"
echo "1. To move"
echo "To move file \"temp.sh\" to parent directory."
echo "Use command : mv temp.sh .."
mv temp.sh ..
echo "2. To rename"
echo "TO rename file \"temp.sh\" to \"tmp.sh\""
echo "Use command : mv temp.sh tmp.sh"
touch temp.sh
mv temp.sh tmp.sh
