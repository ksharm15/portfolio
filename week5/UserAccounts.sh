#!/bin/bash

echo "User Accounts:"
cat /etc/passwd | grep '/bin/bash' > tmp.txt 
#This will  only show users who have “/bin/bash” listed as their default shell.
awk 'BEGIN {

    FS=":";

    print "______________________________________________________________________________________________________________";

    print "| \033[34m      Username    \033[0m | \033[34m   UserID   \033[0m | \033[34m  GroupID   \033[0m | \033[34m              Home              \033[0m | \033[34m      Shell         \033[0m |";

}
#This will print the header

{

    printf("| \033[33m%-18s\033[0m | \033[35m%-12s\033[0m | \033[35m%-12s\033[0m | \033[35m%-32s\033[0m | \033[35m%-20s\033[0m |\n", $1, $3, $4, $6, $7);

}
#This will print the required data from /etc/passwd

END {

    print("______________________________________________________________________________________________________________");

}' tmp.txt