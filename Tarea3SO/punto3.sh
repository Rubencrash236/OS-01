#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: This Script uses the directory tree made in punto2.sh
#       #1 Find all files that ends in .txt with find command
#       #2 Find all files that it's name contains the string "fono"
#               with find command
#       #3 Find all files that it's name contains the string "not"
#               using the find command
#       #4 print the data of a file using find and exec of all the file that ends 
#               in .eml

cd Mail

#1
find . -type f -name "*.txt"
echo "All files that ends with .txt"
echo -n "Press any key to continue..."
read cont 

clear

#2
find . -type f -name "*fono*"
echo "All files names that contains fono"
echo -n "Press any key to continue..."
read cont 

clear 

#3
find . -type f -name "*not*"
echo "All files names that contains not"
echo -n "Press any key to continue..."
read cont 

clear 

#4
find . -type f -name "*.eml" -exec cat {} +;