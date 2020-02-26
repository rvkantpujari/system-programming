clear
for f in `ls -l`
do
  if test -f $f
  then
	files=$files"$f "
  fi
done
echo "Top 5 Largest Files in Current Directory: "
ls -lS $files | head -5

#method2: it finds top 5 largest files recursively.
#find . -type f -printf '%s %p\n' | sort -nr | head -5
