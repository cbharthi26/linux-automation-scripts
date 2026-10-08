#!/bin/bash
THRESHOLD=80
USAGE=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
if [ $USAGE -gt $THRESHOLD ]; then
  echo "Disk Warning! ${USAGE}% - Cleaning /tmp"
  sudo rm -rf /tmp/*
else
  echo "Disk OK - ${USAGE}%"
fi
