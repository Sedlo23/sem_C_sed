#!/bin/bash


param2=$1
currentDate=`date`
latest=$(git describe --abbrev=0)
add1=0.1
param1="$latest + $add1"

git tag -a $param1 -m "$currentDate"
git add .
git commit -m "$param2"
git push origin $param1
git fetch --tags
