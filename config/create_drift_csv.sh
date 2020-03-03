#!/bin/sh
currentDate=$(date +"%Y-%m-%d")
list=$(ls -1 | grep -E $currentDate)

result=$(date +"%Y-%m-%d")

echo $result

for file in $list
do
  value=`cat $file`
  echo "$value"
  result="${result}, ${value}"
done

echo $result > drift.csv
