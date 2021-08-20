#!/bin/bash
cd ~/scripts/portfolio
echo -e "\n =====All sed statements:====="
grep -r 'sed '

echo -e "\n =====All lines that start with the letter m====="
grep -r '^m'

echo -e "\n =====All lines that contain three digit numbers====="
grep -r '\<[0-9]\{3\}\>'

echo -e "\n =====All echo statements with at least three words====="
grep -r "^echo" | gawk 'NF>3'

echo -e "\n =====All lines that would make a good password====="
grep -r ' .*\"[A-Z]*[0-9]*\"'