#!/bin/sh

# terminate running bars
killall -q xclock
killall -q stalonetray

# wait until processes have shut down
while pgrep -u $UID -x xclock >/dev/null; do sleep 1; done
while pgrep -u $UID -x stalonetray >/dev/null; do sleep 1; done

xclock -geom -12+4 &
sleep 2; stalonetray -c $HOME/.fvwmtrayrc &
                
exit 0;

