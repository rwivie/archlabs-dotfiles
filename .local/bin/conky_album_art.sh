#!/bin/bash
IFS=$'\t' mpd_array=( $(MPD_HOST=localhost MPD_PORT=6600 \
          mpc --format "\t%artist%\t%album%\t%file%\t") );

filename="conky_cover.png";
placeholder="/home/ron/.config/conky/placeholder.png"

if [[ ! -f /tmp/"${mpd_array[1]}".album ]] ; then
  rm -f /tmp/*.album &> /dev/null;
  >/tmp/"${mpd_array[1]}".album;

  album=`dirname "/home/ron/Music/${mpd_array[2]}"`;
  cover=$album"/"`ls $album | egrep "jpeg|jpg|png|gif" | head -n 1`;

  if [[ ! -f $cover ]]; then
    cp $placeholder /tmp/$filename;
  else
    convert $cover -resize "130>x" -alpha On -channel A \
                   -evaluate set 25% /tmp/$filename;
  fi
fi