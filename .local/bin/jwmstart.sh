#!/bin/sh

xrdb merge ~/.Xresources &
nitrogen --restore &
xsettingsd &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
(sleep 5; nm-applet) &
(sleep 5; pasystray) &
(sleep 5; blueman-applet) &
numlockx on &
mpDris2 &
dunst -conf ~/.config/dunst/dunstrc_jwm&
picom --config ~/.config/picom/picom.conf --experimental-backends &
(sleep 1; xautolock -time 10 -locker i3lock-arc-dark.sh -corners '+-00' -cornerdelay 15 -notify 15 -notifier "notify-send 'Screen will lock in 15 s'") &
conky -c ~/.config/conky/wicked.conkyrc 2> ~/.conkylog &

