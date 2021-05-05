#!/bin/bash

if [ $# -eq 1 ]
then
	if [ $1 = '-h' ] || [ $1 = '--help' ]
	then
		echo "Usage: mk-jobs n_jobs script"
		exit 0
	fi
fi 

for i in $(eval echo {1..$1})
do
	sbatch $2
done
