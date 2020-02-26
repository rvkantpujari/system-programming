clear
: '
Q. Write a shell script to change the suffix of all your *.txt files to .dat.
'
#method1

for fn in `ls *.txt`
do
   len=`echo $fn | wc -m`
   flen=`expr $len - 4`
   fname=`echo $fn | cut -c1-$flen`
   newnm=$fname"dat"
   mv $fn $newnm
done

echo "Files successfully renamed."

#method2
: '
ext="txt"
clear
for fn in `ls *.txt`
do
   basenm=`basename $fn $ext`
   newnm=$basenm"dat"
   mv $fn $newnm
done
echo "Files successfully renamed."
'

#method 3
: '
ext="txt"
clear
for fn in `ls *.txt`
do
   mv $fn ${fn%.txt}.dat
done
echo "Files successfully renamed."
'


