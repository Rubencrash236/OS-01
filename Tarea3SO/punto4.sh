#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: This Script uses the directory tree created in punto2.sh
#         This script makes a backup of of the directory tree 
#               in the copiaSeguridad.bak file located inthe Local directory

cd Mail
find . -type f -exec cat {} >> Local/copiaSeguridad.bak +;