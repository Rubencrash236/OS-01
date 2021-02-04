#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: This script navigates to the root directory and looks for 
#           the files that has a "86" in its name. 

cd /
find . -type f -name "*86*"  | less