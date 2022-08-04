#!/bin/bash

BASE=$(pwd)

for STDIR in $(ls $DIR)
do
	grep -v  "font" $BASE/$STDIR/theme.cfg > $BASE/$STDIR/backup.cfg
	rm $BASE/$STDIR/theme.cfg
	mv $BASE/$STDIR/backup.cfg $BASE/$STDIR/theme.cfg
	echo "menu.frame.font: sans-8:bold" >> $BASE/$STDIR/theme.cfg
	echo "menu.title.font: sans-10:bold" >> $BASE/$STDIR/theme.cfg
	echo "toolbar.clock.font: sans-10:bold,shadow" >> $BASE/$STDIR/theme.cfg
	echo "toolbar.workspace.font: tahoma-10:bold,shadow" >> $BASE/$STDIR/theme.cfg
	echo "toolbar.iconbar.focused.font: sans-8:bold,shadow" >> $BASE/$STDIR/theme.cfg
	echo "toolbar.iconbar.unfocused.font: sans-8" >> $BASE/$STDIR/theme.cfg
	echo "window.font: sans-8" >> $BASE/$STDIR/theme.cfg
done
