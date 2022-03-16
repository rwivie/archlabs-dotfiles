#!/bin/bash

# Terminate already running bar instances
#killall -q polybar
# If all your bars have ipc enabled, you can also use 
 polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
echo "---" | tee -a /home/ron/.polybar.log
polybar top 2>&1 | tee -a /home/ron/.polybar.log & disown
polybar bottom 2>&1 | tee -a /home/ron/.polybar.log & disown

echo "Polybar launched..."
