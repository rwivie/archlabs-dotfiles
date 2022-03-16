#!/usr/bin/env sh

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2  polybar yourbar 2>/path/to/logfile &
#polybar i3-bar 2>/home/ron/.polybar-log &
#polybar i3-tray 2>/home/ron/.polybar-log &

echo "---" | tee -a /home/ron/.polybar1.log /home/ron/.polybar2.log
polybar i3-bar 2>&1 | tee -a /home/ron/.polybar1.log & disown
polybar i3-tray 2>&1 | tee -a /home/ron/.polybar2.log & disown

echo "Bars launched..."