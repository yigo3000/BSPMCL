#! /bin/bash
make
for matrix_with_path in $(ls matrices/*.mtx)
do
	matrix=$( echo $matrix_with_path | awk '{split($0,a,"[/\.]"); print a[2]}' )
	echo "Processing $matrix"
	./bsp_mcl 2 $matrix_with_path
done