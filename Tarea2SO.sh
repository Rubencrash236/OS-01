#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: Simple bash script that navigates to the bin directory first and list all the files 
#         that have the letter of choice as the third letter of the file name.
#           
#         Then it gives liberty to navigate to any directory and list all the files and folders.
#         If the entry of action is p it prints the ls output to the screen else if the entry for action
#         is a it appends the cat output to a text file in the directory that the script is executed


set -e #tells the script to terminate if any command exited with a nonzero exit status
set -u #tells Bash scripts not to run any command containing a reference to an unset variable name
#set -o pipefail #if the last program terminates with a nonzero status, the pipe will not be terminated

currentDirectory=`pwd`
appendFiles="${currentDirectory}/appendedFiles.txt"

cd /bin 
echo -n "Current directory: " 
pwd
echo "\n"

echo -n "Third letter of the files: " 
read letter

ls ??$letter*
echo "All files with the third letter being ${letter}\n\n"

ls [aeiou]*
echo "All files names dont start with a consonant\n\n\n"
echo -n "Press any key to continue..."
read cont 

clear 
#///////////////////////// Second Part of Script \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
cd ~
echo -n "Current Directory: "
pwd
echo "\n"

echo -n "Directory path: "
read path


echo -n "Action to make p(print to screen) or a(append to a file): "
read action 

if [ "$action" = "a" ]; then
    cat $path >> $appendFiles
elif [ "$action" = "p" ]; then
    cat $path
fi