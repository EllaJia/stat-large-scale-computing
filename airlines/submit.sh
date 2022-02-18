#! /bin/bash

mkdir -p slurm_out

jobId1=$(sbatch --output="slurm_out/slurm-%A_%a.out" \
   		  --error="slurm_out/slurm-%A_%a.err" \
		  preclean.sh)
jobId1=$(echo $jobId1 | sed 's/Submitted batch job //')

jobId2=$(sbatch --array=1987-2008 \
		  --output="slurm_out/slurm-%A_%a.out" \
		  --error="slurm_out/slurm-%A_%a.err" \
		  --dependency=afterok:$jobId1 \
		  pipeline.sh)
jobId2=$(echo $jobId2 | sed 's/Submitted batch job //')

jobId3=$(sbatch --output="slurm_out/slurm-%A_%a.out" \
		  --error="slurm_out/slurm-%A_%a.err" \
		  --dependency=afterok:$jobId2 \
		  turn.sh)
jobId3=$(echo $jobId3 | sed 's/Submitted batch job //')

jobId4=$(sbatch --output="slurm_out/slurm-%A_%a.out" \
		  --error="slurm_out/slurm-%A_%a.err" \
		  --dependency=afterok:$jobId3 \
		  farthest.sh)
jobId4=$(echo $jobId4 | sed 's/Submitted batch job //')

jobId5=$(sbatch --output="slurm_out/slurm-%A_%a.out" \
		  --error="slurm_out/slurm-%A_%a.err" \
		  --dependency=afterok:$jobId3 \
		  getAverage.sh)
