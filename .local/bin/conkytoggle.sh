if pgrep conky; then pkill conky; else conky -c /home/ron/.config/conky/wicked.conkyrc 2> ~/.conkylog; fi
