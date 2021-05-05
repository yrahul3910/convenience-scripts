#!/bin/sh

# Kills all jobs and deletes outputs.
for i in $(eval echo {$1..$2})
do
	scancel $i
  rm slurm-$i.out
done
