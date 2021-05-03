#!/bin/bash

if [ $# -eq 1 ]
then
	if [ $1 = '-h' ] || [ $1 = '--help' ]
	then
		echo "Usage: mk-jobs [n_jobs=20] [script=run.sh]"
		exit 0
	fi
fi 

for i in {1..${1:20}}
do
	sbatch ${2:run.sh}
done
