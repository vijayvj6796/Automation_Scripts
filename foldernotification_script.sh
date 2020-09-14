#!/bin/bash

###################################3


#This script is used to find the folder size and  send mail to user if thresold crosses

################################

folder=/projana/rfic/users/alok
OUTPUT="$(du -s -B1 $folder | awk '{print $1}')"
To_ADDRESS='alok@steradiansemi.com ashish@steradiansemi.com rakesh@steradiansemi.com'
SUBJECT='FOLDER SIZE'
today=`date +"%Y_%m_%d"`
BODY="the folder -($folder) size is "
TEST="$(echo $OUTPUT | awk '{ foo = $1/1024/1024/1024; print foo "GB" }')"
#echo $TEST
if [ $OUTPUT -ge 5368709120 ]
then
  echo ${BODY} ${TEST} , Please Delete unwanted files| mail -s ${SUBJECT} ${To_ADDRESS}
else
  echo "The size of ${folder} is ${TEST} as on ${today}" >> /root/log.txt
fi


folder=/projana/rfic/users/ams
OUTPUT="$(du -s -B1 $folder | awk '{print $1}')"
To_ADDRESS='anupams@steradiansemi.com ashish@steradiansemi.com rakesh@steradiansemi.com'
SUBJECT='FOLDER SIZE'
BODY="the folder -($folder) size is"
TEST="$(echo $OUTPUT | awk '{ foo = $1/1024/1024/1024; print foo "GB" }')"
#echo $TEST
if [ $OUTPUT -ge 5368709120 ]
then
  echo ALert, ${BODY} ${TEST}, Please delete unwanted files | mail -s ${SUBJECT} ${To_ADDRESS}
else
  echo "The size of ${folder} is ${TEST} as on ${today}" >> /root/log.txt
fi

folder=/projana/rfic/users/amrithsk
OUTPUT="$(du -s -B1 $folder | awk '{print $1}')"
To_ADDRESS='amrithsk@steradiansemi.com ashish@steradiansemi.com rakesh@steradiansemi.com'
SUBJECT='FOLDER SIZE'
BODY="the folder -($folder) size is"
TEST="$(echo $OUTPUT | awk '{ foo = $1/1024/1024/1024; print foo "GB" }')"
#echo $TEST
if [ $OUTPUT -ge 5368709120 ]
then
  echo ALert, ${BODY} ${TEST}, Please delete unwanted files | mail -s ${SUBJECT} ${To_ADDRESS}
else
  echo "The size of ${folder} is ${TEST} as on ${today}" >> /root/log.txt
fi


folder=/projana/rfic/users/anupamksinha
OUTPUT="$(du -s -B1 $folder | awk '{print $1}')"
To_ADDRESS='anupams@steradiansemi.com ashish@steradiansemi.com rakesh@steradiansemi.com'
SUBJECT='FOLDER SIZE'
BODY="the folder -($folder) size is"
TEST="$(echo $OUTPUT | awk '{ foo = $1/1024/1024/1024; print foo "GB" }')"
#echo $TEST
if [ $OUTPUT -ge 5368709120 ]
then
  echo ALert, ${BODY} ${TEST}, Please delete unwanted files | mail -s ${SUBJECT} ${To_ADDRESS}
else
  echo "The size of ${folder} is ${TEST} as on ${today}" >> /root/log.txt
fi

folder=/projana/rfic/users/gireesh
OUTPUT="$(du -s -B1 $folder | awk '{print $1}')"
To_ADDRESS='gireesh@steradiansemi.com ashish@steradiansemi.com rakesh@steradiansemi.com'
SUBJECT='FOLDER SIZE'
BODY="the folder -($folder) size is"
TEST="$(echo $OUTPUT | awk '{ foo = $1/1024/1024/1024; print foo "GB" }')"
#echo $TEST
if [ $OUTPUT -ge 5368709120 ]
then
  echo ALert, ${BODY} ${TEST}, Please delete unwanted files | mail -s ${SUBJECT} ${To_ADDRESS}
else
  echo "The size of ${folder} is ${TEST} as on ${today}" >> /root/log.txt
fi

folder=/projana/rfic/users/rakesh
OUTPUT="$(du -s -B1 $folder | awk '{print $1}')"
To_ADDRESS='rakesh@steradiansemi.com'
SUBJECT='FOLDER SIZE'
BODY="the folder  -($folder) size is"
TEST="$(echo $OUTPUT | awk '{ foo = $1/1024/1024/1024; print foo "GB" }')"
#echo $TEST
if [ $OUTPUT -ge 5368709120 ]
then
  echo ALert, ${BODY} ${TEST}, Please delete unwanted files | mail -s ${SUBJECT} ${To_ADDRESS}
else
  echo "The size of ${folder} is ${TEST} as on ${today}" >> /root/log.txt
fi

folder=/projana/rfic/users/rushabhp
OUTPUT="$(du -s -B1 $folder | awk '{print $1}')"
To_ADDRESS='rushabhp@steradiansemi.com ashish@steradiansemi.com rakesh@steradiansemi.com'
SUBJECT='FOLDER SIZE'
BODY="the folder -($folder) size is"
TEST="$(echo $OUTPUT | awk '{ foo = $1/1024/1024/1024; print foo "GB" }')"
#echo $TEST
if [ $OUTPUT -ge 5368709120 ]
then
  echo ALert, ${BODY} ${TEST}, Please delete unwanted files | mail -s ${SUBJECT} ${To_ADDRESS}
else
  echo "The size of ${folder} is ${TEST} as on ${today}" >> /root/log.txt
fi


folder=/projana/rfic/users/ashish
OUTPUT="$(du -s -B1 $folder | awk '{print $1}')"
To_ADDRESS='ashish@steradiansemi.com'
SUBJECT='FOLDER SIZE'
BODY="The folder -($folder) size is"
TEST="$(echo $OUTPUT | awk '{ foo = $1/1024/1024/1024; print foo "GB" }')"
#echo $TEST
if [ $OUTPUT -ge 5368709120 ]
then
  echo Alert, ${BODY} ${TEST} , Please delete unwanted files | mail -s ${SUBJECT} ${To_ADDRESS}
else
  echo "The size of ${folder} is ${TEST} as on ${today}" >> /root/log.txt
fi


