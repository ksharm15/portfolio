#!/bin/sh

echo "\n Enter URL to download"
read u1

echo "\n Enter location to store download file"
read l1

wget $u1 -P $l1
exit 0