#!/bin/bash
if [ "$1" == "low" ]
then
 amixer -q set Master 3%- unmute
 ICON="  "
 TEXT=$(amixer sget Master | tail -1 | cut -d' ' -f7 | sed 's/\(\[\|\]\)//g')
 notify-send "$ICON Volume: $TEXT"
elif [ "$1" == "high" ]
then
 amixer -q set Master 3%+ unmute
 ICON="  "
 TEXT=$(amixer sget Master | tail -1 | cut -d' ' -f7 | sed 's/\(\[\|\]\)//g')
 notify-send "$ICON Volume: $TEXT"
elif [ "$1" == "mute" ]
then
 amixer -q set Master toggle
 ICON="  "
 TEXT=$(amixer sget Master | tail -1 | cut -d' ' -f8 | sed 's/\(\[\|\]\)//g')
 notify-send "$ICON Volume: $TEXT"
else
 echo "Usage volume [low | high | mute]\n"
fi
