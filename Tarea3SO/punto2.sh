#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: Creates the following tree of directories
#                   Mail
#               /     |     \
#           Inbox    Sent    Local
#           /         |     /  |   \
#       SPAM        2006   SO  EDI  IA
# each directory may or not contain a file.

mkdir Mail
cd Mail
mkdir Inbox Sent Local
cd Inbox
mkdir SPAM
cd ..
cd Sent
mkdir 2006
cd ..
cd Local
mkdir SO EDI IA
cd ..

cat > Inbox/SPAM/banco.eml << ENDOFFILE
tiene que pagar la hipoteca papo
ENDOFFILE

cat > Inbox/SPAM/compraTelefono.txt << ENDOFFILE
te vendo un iphone 12 max a 4k klk
ENDOFFILE

echo "La notas que llevaba se me perdieron" > "notas.eml"

cat > Local/SO/noticiasPracticas.eml << ENDOFFILE
En un onticiero nuevo de noticias practicas un mono brinca la cuerda
ENDOFFILE

cat > Local/EDI/febrero2007_notas.eml << ENDOFFILE
estas son notas de febrero 2007
ENDOFFILE

cat > Local/IA/anotaciones.txt << ENDOFFILE
Mira unasanotaciones bien chidas el estudiante sacó 100
ENDOFFILE

echo "Ruben\nJoce\nJuan" > "Local/listaAprobados.txt"

cat > Sent/2006/telefonosClase.eml << ENDOFFILE
8098889878
8297568098
8092238901
8297568098
8098889878
8092238901
ENDOFFILE