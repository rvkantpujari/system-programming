clear
: '
Q. Write a shell script to execute following commands
1. Sort file abc.txt and save this sorted file in xyz.txt
2. Give an example of : To execute commands together without affecting 	  result of each other.
3. How to print “this is
		 a three -line
		     1. Text message”
4. Which command display version of the UNIX?
5. How would u get online help of cat command?
'
touch xyz.txt
touch abc.txt
echo "ravi\namit\nnamit" > abc.txt
echo "1. Sort file abc.txt and save this sorted file in xyz.txt"
echo "\nBefore Sorting:"
cat abc.txt
echo "\nAfter Sorting:"
sort abc.txt | tee xyz.txt
read x

echo "2. Give an example of : To execute commands together without affecting result of each other.\n\n cat ss2.sh | nl"
cat ss2.sh | nl
read x

echo "\n3. Printing following message:"
echo "\"this\n a three -line\n     1.  Text message\""
read x

echo "\n4. Which command display version of the UNIX?"
echo "\nThe command is uname -r"
uname -r
read x

echo "\n5. How would u get online help of cat command?"
echo "\nUsing command \"man cat\""
man cat

