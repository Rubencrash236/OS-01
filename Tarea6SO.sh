#!/bin/sh
#author: Ruben Osmani Diaz Cabrera
#purpose: Format an USB flash memory and then format it in F2FS or any other 2 of choice. After that 
#               copy a file(at least 500MB) to the USB and measure it transfer speed in MB/s and show 
#               the result on screen. Create a log file that contain all this information, if one already 
#               exist append the new information. The format for this data:
#                       -Start time of the test
#                       -Chosen format
#                       -Read speed
#                       -Write speed
# The 500MB file was found in this url http://xcal1.vodafone.co.uk/ using port 80

fatherDirectory=`pwd`

echo "Digite el nombre de la memoria para formatear:\n"
df -h
echo -n "FileSystem: "
read device
echo -n "\nNombre nuevo para la USB: "
read name

echo -n "Formato deseado f2(F2FS), fa(FAT32), ex(EXT4): "
read format 

sudo umount $device

if [ "$format" = "f2" ];
    then sudo mkfs.f2fs -f -l $name $device
    sudo mkdir /media/$name 
    sudo mount -t f2fs $device /media/$name  
    elif [ "$format" = "fa" ];
        then sudo mkfs.vfat -F 32 -n $name $device
        sudo mkdir /media/$name
        sudo mount -t vfat $device  /media/$name  
    elif [ "$format" = "ex" ];
        then sudo mkfs.ext4 -L $name $device
        sudo mkdir /media/$name
        sudo mount -t $device /media/$name    
fi

echo -n "Press any key to continue..."
read cont 
#clear

echo "Su memoria está siendo testeada"
echo "\n"`date` >> stat.txt
if [ "$format" = "fa" ];
    then echo "Format: FAT32" >> stat.txt
    elif [ "$format" = "f2" ];
        then echo "Format: F2FS" >> stat.txt
    elif [ "$format" = "ex" ];
        then echo "Format: EXT3/EXT4" >> stat.txt
fi
sudo cp 512MB.zip /media/$name & sudo hdparm -tT $device >> stat.txt