#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: Simple bash script 
#           
#            
#           
set -e #tells the script to terminate if any command exited with a nonzero exit status
set -u #tells Bash scripts not to run any command containing a reference to an unset variable name
#set -o pipefail #if the last program terminates with a nonzero status, the pipe will not be terminated

currentDirectory=`pwd`
appendFiles="${currentDirectory}/appendedFiles.txt"

cd /bin 
echo "Current directory: " 
pwd
echo "\n"

echo "Third letter of your name:" 
read letter

ls ??$letter*
echo "All files with the third letter being ${letter}\n\n"

ls [aeiou]*
echo "All files names dont start with a consonant\n\n\n"
echo -n "Press any key to continue..."
read cont 
clear 

cd ~
echo -n "Directory path: "
read path

cd $path

echo "Action to make p(print to screen) or a(append to a file): "
read action 

if [ "$action" = "a" ]; then
    ls >> $appendFiles
elif [ "$action" = "p" ]; then
    ls
fi