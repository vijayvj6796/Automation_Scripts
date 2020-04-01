#!/bin/bash
folder=/home/optit/RAj #folder to be monitored
OUTPUT="$(du -sh $folder| awk '{print $1}')" 
SUBJECT='DATA_INDICATOR'
today=`date +"%Y_%m_%d"`
TO_ADDRESS='vijayvj756@gmail.com vijay.k@optit.co'
echo "The Folder Size as on ${today} is $OUTPUT" | mail -s "$SUBJECT" $TO_ADDRESS





