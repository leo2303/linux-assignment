#/bin/bash
for file in "$@"
do
	echo "In directory - $file"
	ls $file
done

