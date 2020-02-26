smark=`cat stu.sh | sort -t ":" -k 3  -n`
for i in $smark
do
  echo $i >> srtstu.sh
done
smark=`cat srtstu.sh | cut -d ":" -f3 | egrep "70|71|72|73|74|75|76|77|78|79|80" -wn`
for i in $smark
do
  echo $i >> stu70-80.sh
done
fl=`head -1 stu70-80.sh | cut -d ":" -f1`
ll=`tail -1 stu70-80.sh | cut -d ":" -f1`
rm stu70-80.sh
while test $fl -le $ll
do
  cat srtstu.sh | head -$fl | tail -1
  fl=`expr $fl + 1`
done
rm srtstu.sh
read x
