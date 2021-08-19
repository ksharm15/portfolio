# !/bin/bash
 
# Simple calculator program
echo "Enter Two numbers of your choice: "
read a
read b
BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

# Input type of operation
echo -e "\n Enter Choice :"
echo -e "\n ${BLUE} 1. Addition ${NC}"
echo -e "\n ${GREEN} 2. Subtraction ${NC}"
echo -e "\n ${RED} 3. Multiplication ${NC}"
echo -e "\n ${Purple} 4. Division ${NC}"
read ch
 
# Case statement to perform arithmatic operation
case $ch in
  1)res=`echo $a + $b | bc`
  ;;
  2)res=`echo $a - $b | bc`
  ;;
  3)res=`echo $a \* $b | bc`
  ;;
  4)res=`echo "scale=2; $a / $b" | bc`
  ;;
  *) echo "You have entered wrong choice" #Invalid selection message
  ;;
esac
echo "Result : $res"