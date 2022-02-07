#!/bin/bash

# Sync Xorg's background from Gnome's
sleep 1
BGTEMP=$(mktemp)
curl -s $(dconf read /org/gnome/desktop/background/picture-uri | sed -r "s#^'|'\$##g") --output $BGTEMP
feh --no-fehbg --bg-fill $BGTEMP
rm $BGTEMP