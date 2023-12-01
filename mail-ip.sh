#!/bin/sh

## Change the following variables
## FIRSTNUMBER is the first number of the ip address in your network
## SO 192.168.1.251 gives 192 as FIRSTNUMBER

## IFTTURL must be changed with your event name and your key
FIRSTNUMBER="192"
IFTTURL="https://maker.ifttt.com/trigger/<your_event>/with/key/<your_key>"

## Don't change anything after this line

IP=$(ip a | grep 'inet' | grep -E -o "$FIRSTNUMBER\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" | head -1)
HOSTNAME=$(hostname)

curl -X POST -d "{\"hostname\":\"$HOSTNAME\",\"IP\":\"$IP\"}" $IFTTURL >/dev/null 2>&1