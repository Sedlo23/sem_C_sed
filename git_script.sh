#!/bin/bash

param1=$1
param2=$2
currentDate=`date`

git tag -a $param1 -m "$currentDate"
git add .
git commit -m "$param2"
git push origin $param1
git fetch --tags
