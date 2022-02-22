#!/bin/sh

#░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
#░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
#░██╗██████╗░██╗░░░░░░█████╗░░█████╗░██╗░░██╗░░░░░░░██████╗░█████╗░██╗░░░░░░█████╗░██████╗░██╗███████╗███████╗██████╗░░
#░██║╚════██╗██║░░░░░██╔══██╗██╔══██╗██║░██╔╝░░░░░░██╔════╝██╔══██╗██║░░░░░██╔══██╗██╔══██╗██║╚════██║██╔════╝██╔══██╗░
#░██║░█████╔╝██║░░░░░██║░░██║██║░░╚═╝█████═╝░█████╗╚█████╗░██║░░██║██║░░░░░███████║██████╔╝██║░░███╔═╝█████╗░░██║░░██║░
#░██║░╚═══██╗██║░░░░░██║░░██║██║░░██╗██╔═██╗░╚════╝░╚═══██╗██║░░██║██║░░░░░██╔══██║██╔══██╗██║██╔══╝░░██╔══╝░░██║░░██║░
#░██║██████╔╝███████╗╚█████╔╝╚█████╔╝██║░╚██╗░░░░░░██████╔╝╚█████╔╝███████╗██║░░██║██║░░██║██║███████╗███████╗██████╔╝░
#░╚═╝╚═════╝░╚══════╝░╚════╝░░╚════╝░╚═╝░░╚═╝░░░░░░╚═════╝░░╚════╝░╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝╚══════╝╚══════╝╚═════╝░░
#░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
#░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
#░░░░░░░░░░░░░                                                                                           ░░░░░░░░░░░░░░
#░░░░░░░░░░░░░  i3lock-solarized is licensed under the MIT License Copyright (c) 2020 Parsiad Azimzadeh  ░░░░░░░░░░░░░░
#░░░░░░░░░░░░░         Solarized is licensed under the MIT License Copyright (c) 2011  Ethan Schoonover  ░░░░░░░░░░░░░░
#░░░░░░░░░░░░░                                                                                           ░░░░░░░░░░░░░░
#░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
#░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░


alpha='dd'
base03='#383c4a'
base02='#404552'
base01='#d3dae3'
base00='#4b5162'
base0='#5294e2'
base1='#3e4350'
base2='#404552'
base3='#353945'
yellow='#c88752'
orange='#c89b79'
red='#ac6868'
magenta='#a152c8'
violet='#b079c8'
blue='#79a8c8'
cyan='#52c8ad'
green='#7fd17f'

i3lock \
  --insidever-color=$base02$alpha \
  --insidewrong-color=$base02$alpha \
  --inside-color=$base02$alpha \
  --ringver-color=$green$alpha \
  --ringwrong-color=$red$alpha \
  --ringver-color=$green$alpha \
  --ringwrong-color=$red$alpha \
  --ring-color=$blue$alpha \
  --line-uses-ring \
  --keyhl-color=$magenta$alpha \
  --bshl-color=$orange$alpha \
  --separator-color=$base01$alpha \
  --verif-color=$green \
  --wrong-color=$red \
  --layout-color=$blue \
  --date-color=$blue \
  --time-color=$blue \
  --screen 1 \
  --blur 1 \
  --clock \
  --indicator \
  --time-str="%I:%M:%S" \
  --date-str="%a %b %e %Y" \
  --verif-text="Verifying..." \
  --wrong-text="Auth Failed" \
  --noinput="No Input" \
  --lock-text="Locking..." \
  --lockfailed-text="Lock Failed" \
  --time-font="Helvetica" \
  --date-font="Helvetica" \
  --layout-font="Helvetica" \
  --verif-font="Helvetica" \
  --wrong-font="Helvetica" \
  --radius=100 \
  --ring-width=20 \
  --pass-media-keys \
  --pass-screen-keys \
  --pass-volume-keys \
  --nofork \
