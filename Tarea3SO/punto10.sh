#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: This script uses the directory tree created on punto2.sh
#          This script checks for a certain string in the names of the list in 
#                in notas.txt
cd Mail/Local/SO 
grep -i "n" 'notas.txt'