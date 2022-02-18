# Large_Scale_Computing

## 2 projects for practicing distributed computing via Slurm and HPC.

## Mtcars

#### getData.sh: Split data into three files (pretend these files are large so that they're worth processing in parallel jobs)
#### jobArray.sh: process the ".csv" file (with header) corresponding to the SLURM_ARRAY_TASK_ID gived to it
#### findLightest.sh: conbine three outputfiles into one and write the lightest weight to a file "out"
#### submit.sh: use sbatch to submit parallel jobs


## Airline
#### Data can be downloaded via http://pages.stat.wisc.edu/~jgillett/605/HPC/airlines/1987.csv.bz2


#### pipeline.sh: download and catch the data 
#### turn.sh: merge all the .csv files into one big .csv file (allMSN.csv)
#### farthest.sh: find the farthest value in allMSN.csv
#### submit.sh: use sbatch to submit parallel jobs
