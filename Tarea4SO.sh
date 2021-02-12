#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: This Script recieve 2 arguments one being the desired method to compress a file 
#            and the second one the file path.
#            POsible entries for the method: -z (zip), -t(tar), -g(gzip)

method=$1
path=$2

if [ "$method" = "-z" ]; 
    then zip $path $path
    elif [ "$method" = "-t" ];
    then tar -cf "${path}.tar" $path
    elif [ "$method" = "-g" ];
    then gzip $path
    else echo "${method} is not a valid entry for a method try -z(zip), -t(tar), -g(gz)"
    fi
