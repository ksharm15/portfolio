#!/bin/bash

read -p "Type the name of the folder you would like to store password"  folderName 
#User enters Folder name
#FolderName storing variable

mkdir "$folderName" 2>/dev/null
#Folder  Creating in Directory, if folder exists this command eliminate the error

touch ~/scripts/portfolio/week2/$folderName/secret.txt
#This command will use to create secret.txt file for saving the secret password

read -sp "Enter Password" paswrd 
#User entered secret password

echo "$paswrd" | sha256sum >> ~/scripts/portfolio/week2/$folderName/secret.txt
#users password in a file called 'secret.txt' contains the password entered by user

exit 0