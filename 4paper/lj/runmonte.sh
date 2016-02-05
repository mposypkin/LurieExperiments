#!/bin/bash

# File with data
DATAFILE=../model4.json

# Folder with executables
LUR=/home/mikhail/exp/LURIE

# Monte-Carlo Solver
MONTESOLVER=$LUR/montecarlo.exe

# Time to run in seconds
TIMERUN=1200


mkdir $1
cd $1
timeout $TIMERUN time $MONTESOLVER $DATAFILE 10000 loginc.txt logval.txt > output.txt 
