#!/bin/sh

xrdb merge ~/.Xresources &
#(sleep 1; nitrogen --restore) &
nitrogen --restore &
xsettingsd &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#(sleep 5; bbpager) &
#stalonetray --dockapp-mode simple &
(sleep 5; nm-applet) &
(sleep 5; pasystray) &
(sleep 5; blueman-applet) &
numlockx on &
dunst &
picom --config ~/.config/picom/picom.conf --experimental-backends &
(sleep 1; xautolock -time 10 -locker i3lock-arc-dark.sh -corners '+-00' -cornerdelay 15 -notify 15 -notifier "notify-send 'Screen will lock in 15 s'") &
#/home/ron/.config/polybar/launch.sh &
exec /usr/bin/fvwm3 >> ~/.fvwm/log 2>&1

