#!/bin/bash

PORT=$1
NOTEBOOK_DIR=$2

module load python/3.6.1 R biology samtools 
cd /oak/stanford/groups/msalit/ndolson
source nanopore_env/bin/activate

#module load py-jupyter/1.0.0_py36
cd $NOTEBOOK_DIR
jupyter notebook --no-browser --port=$PORT
