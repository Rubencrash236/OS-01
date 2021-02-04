#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: This script uses the directory tree created in punto2.sh
#         This script creates a file named notas.txt under SO directory with the format 
#               Nombre ID calificación

cat > Mail/Local/SO/notas.txt << ENDOFFILE
Nombre      ID           Calificación
Ruben       2189098             100.0
Leandry     0981237              90.0
Alicia      7892834              95.0
Zuko        6534907              86.4
Pedro       0987213              69.2
Samuel      4739102             100.0
Oliver      5109657              42.9
Yamel       1234798              72.4
Yariel      4701298              89.0
Laura       8629845              97.0
Abinadersh  1237987             100.0
ENDOFFILE