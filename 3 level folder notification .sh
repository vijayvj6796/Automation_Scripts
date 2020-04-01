#!/bin/bash

folder=/proj #folder to be monitored
OUTPUT="$(du -sh --max-depth=2 $folder)"
SUBJECT='DATA_INDICATOR'
today=`date +"%Y_%m_%d"`
TO_ADDRESS='rakesh@steradiansemi.com ashish@steradiansemi.com it@steradiansemi.com vijay.k@optit.co baskar.p@optit.co'
echo "The Folder Size as on ${today} is $OUTPUT" | mail -s "$SUBJECT" $TO_ADDRESS




