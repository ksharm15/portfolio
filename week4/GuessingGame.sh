#!/bin/bash



#This function prints a given error

printError()

{

    echo -e "\033[31mERROR:\033[0m $1"

}



#This function will get a value between the 2nd and 3rd arguments

getNumber()

{

    read -p "$1: "

    while (( $REPLY < 42 || $REPLY> 42)); do

        if [[ $REPLY < 42 ]]; then
        echo "Too Low!" 
        else
            echo "Too High!"   
        fi
        #This loop identify the number is low or high

        read -p "$1: "

    done
    

}



echo "Script Game"

getNumber "please type a number between 1 and 100" 42

echo "Correct !!"