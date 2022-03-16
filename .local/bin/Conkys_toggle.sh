#!/bin/bash
# If conky is running, kill it.  Otherwise start it.


case "$1" in
    --toggle)
        if [ "$(pgrep -x conky)" ]; then
            pkill conky
        else
            /home/ron/.local/bin/Run_Conky.sh
        fi
        ;;
esac
