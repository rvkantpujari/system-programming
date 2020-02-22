if test $# -lt 1
then
   echo "Less arguments provided."
   echo "------------------------"
   echo "soft_link.sh file/dir_name"
else
   if test -e "soft_link"$1
   then
	rm -rf "soft_link"$1
   fi
   ln -s $1 "soft_link_"$1
   echo "\nSoft link of $1 created successfully.\n"
fi
