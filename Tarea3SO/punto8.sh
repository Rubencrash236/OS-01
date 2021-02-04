#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: This Script uses the text file created in punto7.sh
#         Visualize the first and last 7 rows of the file notas.txt under
#               SO directory 

echo "First row of the file:"
head -2 Mail/Local/SO/notas.txt
echo "\n"
echo "Last 7 rows of the file:"
tail -7 Mail/Local/SO/notas.txt
