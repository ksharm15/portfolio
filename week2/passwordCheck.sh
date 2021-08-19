#!/bin/bash

read -sp "Please Enter Password" paswrd
#User entered secret password

echo $paswrd | sha256sum -c secret.txt > t1 2>/dev/null 
#Password checked against stored secret.txt file and output is ok if both the file is correct.
#If both the password did not match output would be FAILED.
 
echo '-: OK' > t2
#This is validation part if the password is correct. So we are using this variable to check wether the password matched or not.

if cmp -s t1 t2; then
#This will compare the output of the file whch is valid or not
    echo -e "\n Access Granted"
    #If both the t1 and t2 correct it display message Access Granted
    rm t1 t2 #this will remove temporary file from disk
    exit 0
    #If condition is true exit code would 0
else
    echo -e "\n Access Denied"
    #If both t1 and t2 did not match it displays Access denied.
    rm t1 t2 #this will remove temporary file from disk
    exit 1
    #If condition is false exit code would 1
fi
