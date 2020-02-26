clear
: '
Q. Write a shell script to execute following commands
1. Create a file called text and store name,age and address in it.
2. Display the contents of the file text on the screen.
3. Delete the directories mydir and newdir at one shot.
4. Sort a numeric file?
5. Change the permissions for the file newtext to 666.
'
touch text.txt
echo "ravi:25:chandkheda\nsmit:20:jivraj\nyash:20:chandkheda" > text.txt
echo "1. Create a file called text and store name,age and address in it."
sleep 0.5
echo "Task 1 done."

echo "\n2. Display the contents of the file text on the screen."
cat text.txt
sleep 0.5
echo "Task 2 done."
mkdir mydir newdir

echo "\n3. Delete the directories mydir and newdir at one shot."
rmdir mydir newdir
sleep 0.5
echo "Task 3 done."

echo "\n4. Sort a numeric file?"
touch num.dat
echo "34\n21\n2\n-2\n23\n233\n0" > num.dat
sort -n num.dat
sleep 0.5
#sort -t ":" -k2 text.txt

echo "\n5. Change the permissions for the file newtext to 666."
touch newtext.txt
echo "Before:"
ls -l newtext.txt
chmod 666 newtext.txt
echo "After:"
ls -l newtext.txt
