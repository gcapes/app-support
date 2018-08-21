# Compile MATLAB file as single-threaded executable.
# Source this script, passig a single matlab file as an argument.
# Usage:
# . compile-singlethread-matlab.sh mycode.m
# Optionally, can pass additional arguments e.g.
# . compile-singlethread-matlab.sh mycode.m -I toolbox-dir

mcc -m $1 -R -singleCompThread ${@:2}
