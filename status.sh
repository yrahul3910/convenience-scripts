#!/bin/bash
echo "Status for jobs:"
echo "================"
printf "Number of jobs running: $(squeue | grep ryedida | wc -l)\n\n"
for file in slurm-*.out
do
	printf "$file: "
	printf "$(grep -E "^k=" $file | wc -l) / 400\n"
done
