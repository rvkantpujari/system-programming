if test $# -lt 1
then
   echo "Less arguments provided."
   echo "------------------------"
   echo "hard_link.sh file/dir_name"
else
   if test -e "hard_link"$1
   then
	rm -rf "hard_link"$1
   fi
   ln $1 "hard_link_"$1
   echo "\nHard link of $1 created successfully.\n"
fi
