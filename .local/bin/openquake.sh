#!/bin/bash

wid=`xdotool search --classname urxvtq | head -n 1`
if [ -z "$wid" ]; then
   /usr/bin/urxvt -geometry 266x5+0+0 -name urxvtq -depth 32 -bg rgba:0000/0000/1111/dddd
   wid=$(xdotool search --classname urxvtq | head -n 1)
   xdotool windowfocus $wid
else
    if [ -z "$(xdotool search --onlyvisible --classname urxvtq 2>/dev/null | head -n 1)" ];     then
        xdotool windowmap $wid
        xdotool windowfocus $wid
    else
        xdotool windowunmap $wid
    fi
fi