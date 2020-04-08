#!/bin/sh
currentDate=$(date +"%Y-%m-%d")
max=10
list=$(ls -1 | grep -E $currentDate)

for file in $list
do
    value_list=`cat $file`
    for value in $value_list
    do
       t=$(echo $value | tr -d .)
       if [ $t -gt $max ]
       then
       max=$t
       fi
    done
done

echo $max*0.001 | bc >> total-drift.log
