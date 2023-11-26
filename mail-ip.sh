#!/bin/sh

FIRSTNUMBER="192"
IFTTURL="https://maker.ifttt.com/trigger/<your_event>/json/with/key/<your_key>"

IP=$(ip a | grep 'inet' | grep -E -o "$FIRSTNUMBER\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" | head -1)
HOSTNAME=$(hostname)

curl -X POST -H "Content-Type: application/json" -d "{\"hostname\":\"$HOSTNAME\",\"IP\":\"$IP\"}" $IFTTURL >/dev/null 2>&1