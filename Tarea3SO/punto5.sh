#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: This Script counts the number of files and directories in 
#               the current directory and gives the current date and time

ls -1 | wc -l #for the current directory
echo "The current directory\n"

find . | wc -l #for all the subdirecroies including folders
echo "Current directory and subdirectories\n"

find . -type f | wc -l #for all subdirectories excluding folders
echo "Current directory and subdirecotries excluding folders\n"

echo "Current time: "
date 