#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: This script uses the directory tree created in punto2.sh
#         This Scripts creates a file named agenda.txt under the Inbox directory
#               and configures it so that the user can write and read
#               the group members can only read and others can't do anything

cat > Mail/Inbox/agenda.txt << ENDOFFILE
Comprar pan 8:00 AM
Correr      11:00 AM
Cita dentista 1:00 PM
trabajo 3:00 PM 
ENDOFFILE

cd Mail/Inbox 

chmod g-w agenda.txt #group members can't write

chmod o-rw agenda.txt #others can't do anything
