#!/bin/bash

# 2 arguments: 1(Sourcefile: 2(Targetlocation


# Declare error code
K_FILENOTFOUND=1

function sendshit () {
	SOURCEFILE=$1 # Name of the file
	TARGETLOCATION=$2 # The target location

	if [[ -e "$SOURCEFILE" ]] && [[ -d "$TARGETLOCATION" ]] 
	then
		mv "$SOURCEFILE" "$TARGETLOCATION"
	fi

	if [["!$" -eq 0 ]]
		echo "Succesfully moved!"

	elif [["$?" -eq 1 ]]
	then
		echo "Error, check your shit"	
	fi

}

echo "$SOURCEFILE" "$TARGETLOCATION"

sendshit "$1" "$2"
