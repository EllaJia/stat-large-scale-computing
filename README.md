# Large_Scale_Computing

2 projects for practicing distributed computing via Slurm and HPC.

Mtcars:
Data can be downloaded via

getData.sh: Split data into three files (pretend these files are large so that they're worth processing in parallel jobs)
jobArray.sh: process the ".csv" file (with header) corresponding to the SLURM_ARRAY_TASK_ID gived to it
findLightest.sh: conbine three outputfiles into one and write the lightest weight to a file "out"
submit.sh: use sbatch to implement the graph:
                  getData.sh
              /        |        \ 
   jobArray.sh    jobArray.sh    jobArray.sh
              \        |        /
                 \     |     /
                    \  |  /
                findLightest.sh


Airline:
Data can be downloaded via http://pages.stat.wisc.edu/~jgillett/605/HPC/airlines/1987.csv.bz2

farthest.sh:
pipeline.sh:
turn.sh:
submit.sh:
