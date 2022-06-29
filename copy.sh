#!/bin/bash
cat $1 | while read FILE_NAME && [ ! -z $FILE_NAME ] 
do
	if [ ! -d $FILE_NAME ]
	then
                echo  "[ERROR]$FILE_NAME not exist"
                continue
	else
        	echo "[Copying]$FILE_NAME  /boot/myinit$FILE_NAME"
        	cp --archive $FILE_NAME "/boot/myinit$FILE_NAME"
		if   [ ! $? -eq 0 ]  
       		then
               	 	echo "[Makedir]${FILE_NAME%/*}"
			mkdir -p "boot/myinit$FILE_NAME/*"
               		cp --archive $FILE_NAME "/boot/myinit$FILE_NAME"
       		fi	
	fi
done

~          
