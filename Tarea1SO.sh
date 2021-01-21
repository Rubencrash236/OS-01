#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: Simple bash Script that navigates to a
#           directory specified by the user and creates
#           2 Files listing the Files in the directory in 
#           ascending and descending order.

# saving the path of were the script was executed
currentDirectory=`pwd`

# navigating to the home directory
cd ~
# Printing the father directory
echo "${currentDirectory}"
echo "File Path:"
read path

# Navigate to the specified path
cd $path 
# create a directory where our lists will be stored
mkdir lists
# listing and organizing from smallest to biggest
# and capruting their outputs to a text file
ls -S -s >> biggest2smallest.txt 
ls -Sr -s >> smallest2biggest.txt

# moving files to the newly created directory lists
mv biggest2smallest.txt lists
mv smallest2biggest.txt lists
# moving the Folder to the father directory
mv lists $currentDirectory