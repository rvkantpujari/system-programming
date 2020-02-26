awk -F: '{ if( $3 >= 70 && $3 <=80) print $1 ":" $2 ":" $3}' stu.sh
