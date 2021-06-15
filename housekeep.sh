#!/bin/bash
#
#arg[1]=folder to delete, arg[2]= delete after X days
# 02-june-2021 - initial verison

DIR=$1 #folder watch to delete
DAY_DEL=$2 # older than this days will be delete

cd $DIR

find . -type f \! -name \*.gz -mtime +$DAY_DEL -print
find . -type f \! -name \*.gz -mtime +$DAY_DEL |xargs gzip 

find . -type f -name \*.gz -mtime +$DAY_DEL -print
find . -type f -name \*.gz -mtime +$DAY_DEL -exec rm -f {} \;
