#!/bin/bash

BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

read -sp "Please Enter Password " paswrd
#User entered secret password

echo $paswrd | sha256sum -c ~/scripts/portfolio/week2/secret.txt > t1 2>/dev/null 
#Password checked against stored secret.txt file and output is ok if both the file is correct.
#If both the password did not match output would be FAILED.
 
echo '-: OK' > t2
#This is validation part if the password is correct. So we are using this variable to check wether the password matched or not.

if cmp -s t1 t2; then
#This will compare the output of the file whch is valid or not
    echo -e "\n ${GREEN} Access Granted ${NC} "
    #If both the t1 and t2 correct it display message Access Granted
    echo -e "\n ${RED}Select an option: ${NC}"
    echo -e "${BLUE}1. Create a folder" #Display Selection
    echo "2. Copy a folder"
    echo "3. Set a password"
    echo "4. Calculator"
    echo "5. Create Week Folder"
    echo "6. Check Filenames"
    echo -e "${BLUE}7. Download a file ${NC}"
    read -p "Enter your choice:" choice
    case $choice in
    1) #When user select options 1 run folderCreator Script
        sh ~/scripts/portfolio/week2/folderCreator.sh
        echo -e "\n Folder Created Successfully"
    ;;
    2)  #When user select Option 2 run folderCopier Script
        sh ~/scripts/portfolio/week2/folderCopier.sh 
        echo -e "\n Folder Copied Successfully"
    ;;
    3) #When user select Option 3 run setPassword Script
        ./setPassword.sh
        echo -e "\n Password Changed  Successfully"
    ;;
    4) #When user select Option 4 run Calculator Script
        ./calculator.sh
        echo -e "\n Calculator running  Successfully"
    ;;
    5) #When user select Option 5 run create week folder Script
        read -p "Enter two number to create week folder" n1 n2
        ./megafoldermaker.sh $n1 $n2
        echo -e "\n Weekly folder created  Successfully"
    ;;
    6) #When user select Option 6 run Filename check Script
        ./filenames.sh
        echo -e "\n Filename checked  Successfully"
    ;;
    7) #When user select Option 7 run file downloader Script
        ./downloader.sh
        echo -e "\n Downloader running  Successfully"
    ;;
    *) echo "You have entered wrong choice" #Invalid selection message
    ;;
    esac
    rm t1 t2 #this will remove temporary file from disk
    exit 0
    #If condition is true exit code would 0
else
    echo -e "\n Access Denied \n Good Bye"
    #If both t1 and t2 did not match it displays Access denied.
    rm t1 t2 #this will remove temporary file from disk
    exit 1
    #If condition is false exit code would 1
fi