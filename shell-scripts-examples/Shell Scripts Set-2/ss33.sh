clear
echo "Method1"
#method1
if test $# -ne 0
then
	for f in $*
	do
	  if test -f $f
	  then
		echo "File '$f' has following permission(s) : " `ls -l $f | cut -c2-10`
	  fi
	done
else
    echo "No filename was passes as argument."
fi

echo "Method2"
#method2
if test $# -ne 0
then
	for f in $*
	do
	  if test -f $f
	  then
		echo "Root has following permission(s) : " `ls -l $f | cut -c2-4`
		echo "Group has following permission(s) : " `ls -l $f | cut -c5-7`
		echo "Other has following permission(s) : " `ls -l $f | cut -c8-10`
	  fi
	done
else
    echo "No filename was passes as argument."
fi

echo "Method3"
#method3
if test $# -ne 0
then
	for f in $*
	do
	  if test -f $f
	  then
		r=`ls -l $f | cut -c2`
		w=`ls -l $f | cut -c3`
		x=`ls -l $f | cut -c4`
	        if test $r = "r"
 	        then
		   echo "Root has READ persmission."
		fi
		if test $w = "w"
 	        then
		   echo "Root has WRITE persmission."
		fi
	        if test $x = "x"
 	        then
		   echo "Root has EXECUTE persmission."
		fi
		echo ""
		r=`ls -l $f | cut -c5`
		w=`ls -l $f | cut -c6`
		x=`ls -l $f | cut -c7`
	        if test $r = "r"
 	        then
		   echo "Group has READ persmission."
		fi
		if test $w = "w"
 	        then
		   echo "Group has WRITE persmission."
		fi
	        if test $x = "x"
 	        then
		   echo "Group has EXECUTE persmission."
		fi
		echo ""
		r=`ls -l $f | cut -c8`
		w=`ls -l $f | cut -c9`
		x=`ls -l $f | cut -c10`
	        if test $r = "r"
 	        then
		   echo "Other has READ persmission."
		fi
		if test $w = "w"
 	        then
		   echo "Other has WRITE persmission."
		fi
	        if test $x = "x"
 	        then
		   echo "Other has EXECUTE persmission."
		fi
	  fi
	done
else
    echo "No filename was passes as argument."
fi
