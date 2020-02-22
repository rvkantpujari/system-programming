# sed_ex1.sh : It illustrates the basic structure of 'sed' command
# sed 's/find/replace/' filename.ext
# Find: Name and Replace with: NAME
#----------------------------------------

# sed_ex2.sh : To find and replace (substitute) multiple words use option (-e)
# sed -e 's/find/replace/; s/find/replace/; ...' filename.ext

#----------------------------------------
# sed_ex3.sh : Words to be replace are fetched from file (file.ext) then use option (-f)
# sed -f file.txt filename.ext

#----------------------------------------
# There are four types of substitutions:
# 1. g - replaces all occerences.
# 2. A number - the occureence number for the new text you want to substitute.
# 3. p - print original content.
# 4. w file - write results to a file.

#----------------------------------------
# insert using -i option
# append using -a option
#----------------------------------------


