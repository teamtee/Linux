#!/bin/bash
for item in $@
do
	echo "[Processing]$item"
	for loop in $(ldd $item| awk '{if( $2=="=>"){print $3 }{echo "fad"}}')
       	do	
		#echo "$loop" |awk '{print}'
		echo "	[Copying]$loop  /boot/myinit$loop"
		cp $loop "/boot/myinit$loop"
		
	done
done

~         
