#!/bin/bash

filename=$1
directory=$2
extension=$3

if [ -z $extension ]
then
	echo "There are needed 3 parametres"
else

	if [ ! -d $directory ]
	then
		echo "Directory can't be read" >&2
	else
		if [ ! -w $filename ]
		then
			echo "File can't be written" >&2
		else	
			
			for file in $directory*.$extension
			do
				echo $file >> $filename
			done;
			sort -i $filename
		fi
	fi
fi
