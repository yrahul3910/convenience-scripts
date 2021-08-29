#!/bin/bash

if [ $# -eq 0 ]
then
  echo "Usage: job-stats JOBID"
	exit 0
fi 

sstat -j $1.batch --format JobID,MinCPUNode,AveCPU
