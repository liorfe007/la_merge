#!/usr/bin/env bash

mytime=`date | awk '{print $4}'`
echo 'Start time : '$mytime
sleep 60
mytime=`date | awk '{print $4}'`
echo 'End time : '$mytime

