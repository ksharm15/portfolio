#!/bin/bash
FILE=~/scripts/portfolio/week3/filenames.txt #File containing the names needs to check
while IFS= read -r line #Read line by line file
do
#This will perform the activtiy

if [ -f "$line" ]; then #Check if the provided value matches with file
    echo "$line - That file exists."
else 
    if [[ -d "$line" ]]; then #Check if provided value matches with Directory
        echo "$line - That Directory exists."  
        else
        echo "$line - Could not understand it." #If it not matches with file and directory this message prints

    fi
    
fi

done < "$FILE" #End of the file reading
exit 0