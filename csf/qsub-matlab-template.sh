#!/bin/bash

# ---- SGE options (lines start with #$): -------------------------------
#$ -S /bin/bash	# This jobscript is written for the bash shell
#$ -cwd		# Run the job in the current directory
#$ -V		# Inherit environment settings (e.g. from loaded modulefiles)
#$ -N matlabjob	# Give the job a name
#$ -m bea	# Email on start, end or abort
#$ -M gerard.capes@manchester.ac.uk
# ---- Commands to be executed (programs to be run) on a compute node ----
./run_hello.sh $MATLAB_HOME
