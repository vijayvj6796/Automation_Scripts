#!/bin/bash
folder=/home/optit/RAj #folder to be monitored
OUTPUT="$(du -sh $folder| awk '{print $1}')" 
SUBJECT='DATA_INDICATOR'
today=`date +"%Y_%m_%d"`
TO_ADDRESS='vijayvj756@gmail.com vijay.k@optit.co'
echo "The Folder Size as on ${today} is $OUTPUT" | mail -s "$SUBJECT" $TO_ADDRESS


SUBJECT='FOLDER SIZE'
BODY="the folder size threshold has been raised"



if [ $OUTPUT -gt  "5.9G" ] #comparin folder size with thresold size
then
   echo ${BODY} | mail -s ${SUBJECT} ${TO_ADDRESS}
else
   echo "The Folder has $OUTPUT space"
fi



