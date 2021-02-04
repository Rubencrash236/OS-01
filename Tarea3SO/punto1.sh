#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: This script based on the /bin directory and gives the following on screen
#        #1  All the files that its thrid letter is an a.
#        #2  All the files that begins with a vocal.
#        #3  All the files that begins with a b and ends with a number.

#1
cd /bin
ls ??a*
echo "All files that it's third letter is an a \n\n"
echo -n "Press any key to continue..."
read cont

clear

#2
ls [aeiou]*
echo "All the files that begins with a vocal \n\n"
echo -n "Press any key to continue..."
read cont

clear

#3
ls b*[1234567890]
echo "All the files that begins with a b and ends with a number \n\n"
echo -n "Press any key to continue..."
read cont 
clear 