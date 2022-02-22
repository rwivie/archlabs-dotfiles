#!/bin/sh

for i in {1..5..-1}; do
#    notify-send "Screenshot in $i..";
dunstify -i camera -h string:x-dunst-stack-tag:screenshot "Screenshot in $i..";
    sleep 1;
    dunstify -i camera -h string:x-dunst-stack-tag:screenshot "Screenshot Taken"
done

scrot -d 5 -c $HOME/Pictures/ScreenShots/`date +%Y-%m-%d_%H:%M:%S`.png



#dunstify -h string:x-dunst-stack-tag:screenshot "Screenshot in $i.."