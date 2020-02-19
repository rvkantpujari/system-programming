# display 1st column of data separated by delimiter " " (single-space)
echo '\ncat data.sh | cut -d " " -f1\n'
cat data.sh | cut -d " " -f1
# multiple fields like 1 & 3
echo '\ncat data.sh | cut -d " " -f1,3\n'
cat data.sh | cut -d " " -f1,3


# multiple fields like 1 & 3
echo '\n-------------------'
echo 'Omit top 2 records'
echo '-------------------'
echo 'cat data.sh | cut -d " " -f1,3 | sed -n 5,$p\n'
cat data.sh | cut -d " " -f1,3 | sed -n '5,$p'
