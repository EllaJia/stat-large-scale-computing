#! /bin/bash

n=$SLURM_ARRAY_TASK_ID

cat mtcars$n.csv | tail -n +2 | cut -d, -f7,11 | awk -F, '{ if ($2 == "3") {print $0} }' > out$n.csv
