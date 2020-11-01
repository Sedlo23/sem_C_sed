#!/bin/bash


param2=$1
currentDate=`date`
latest=$(git describe --abbrev=0)
param1=$(echo "$latest+0.1" | bc) 

git tag -a $param1 -m "$currentDate"
git add .
git commit -m "$param2"
git push
git push origin $param1
git fetch --tags
