#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: Make a Script that lets the user make a search on a folder with or without wilcards,
#           Then make a copy fo all the files found and change the name to them using the format: originalName_day_month_year,
#           Then compress it or agroup them in a folder.

fatherDirectory=`pwd`

cd ~

#echo "Current directory: ${`pwd`}"

echo "Direccion del folder: "
read path

echo "\n\n"
echo "Wildcard a usar(filtrado): "
read filter

cd $path

ls -d $filter > files.txt

mkdir -p $fatherDirectory/Copies
Dateday=`date +"%d"`
DateMonth=`date +"%m"`
dateYear=`date +"%y"` 
while read -r line
do
    #echo $line
    cp -v -R "$line" $fatherDirectory/Copies/"$line _ $Dateday _ $DateMonth _ $dateYear"
done < files.txt
rm files.txt
cd $fatherDirectory
zip -r Copies.zip Copies 