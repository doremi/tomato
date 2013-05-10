#!/bin/bash

LOG_FILE="log.txt"

WORK_TIME=1500
REST_TIME=300

STOP_REST_MUSIC="Front_Center.wav"
TAKE_BREAK_MUSIC="Rear_Center.wav"

START_TIME=`date '+%Y-%m-%d %H:%M:%S'`
for (( i=$WORK_TIME; i >= 0; i=i-1 )) do
    echo -en "$i     \r";
    sleep 1;
done

aplay $TAKE_BREAK_MUSIC

read -p "Work log: " WORK_LOG

END_TIME=`date '+%Y-%m-%d %H:%M:%S'`

echo $START_TIME "-" $END_TIME $WORK_LOG >> $LOG_FILE

for (( i=$REST_TIME; i >= 0; i=i-1 )) do
    echo -en "$i     \r";
    sleep 1;
done

aplay $STOP_REST_MUSIC
