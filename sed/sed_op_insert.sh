# insert column header on every line

sed '1,3d' data.sh | sed -e 'i\---- ----- ---- ------\nName Email City Mobile\n---- ----- ---- ------'

