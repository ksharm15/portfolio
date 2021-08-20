#!/bin/bash

./IpInfo.sh > t1.txt

sed -n 's/IP Address/IP ADDRESS/p' t1.txt

rm -rf t1.txt
exit 0