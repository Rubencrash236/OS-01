#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: This script uses the directory tree created in punto2.sh
#         This script deletes any repetition on the file telefonosClase.eml
#              under the Sent/2006 directory

cd Mail/Sent/2006
touch temp

sort -n telefonosClase.eml > temp
cat temp > telefonosClase.eml
uniq telefonosClase.eml > temp
cat temp > telefonosClase.eml
rm temp 