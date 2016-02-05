#!/bin/bash

# File with data
DATAFILE=../model1.json

# Folder with executables
LUR=/home/mikhail/exp/LURIE

# Branch-and-Bound Solver
BNBSOLVER=$LUR/searchall.exe

# Time to run in seconds
TIMERUN=1200


mkdir $1
cd $1
timeout $TIMERUN time $BNBSOLVER $DATAFILE loginc.txt logval.txt > output.txt 
