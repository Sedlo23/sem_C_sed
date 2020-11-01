#!/bin/bash




param2=$1
param3=$2
param4="nt"
currentDate=`date`
latest=$(git describe --abbrev=0)
param1=$(echo "$latest+0.1" | bc) 


if [ $param3 != $param4 ]
then
	git tag -a $param1 -m "$currentDate"
	git fetch --tags
fi



git add .
git commit -m "$param2"
git push
git push origin main

