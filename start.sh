#!/bin/bash

# Stop conky
killall conky

# Draw gnome bg on xorg bg
sleep 1
BGTEMP=$(mktemp)
curl -s $(dconf read /org/gnome/desktop/background/picture-uri | sed -r "s#^'|'\$##g") --output $BGTEMP
feh --no-fehbg --bg-fill $BGTEMP
rm $BGTEMP

# Start conky
conky -c $HOME/.config/conky/NeoRegulus/NeoRegulus.conf &> /dev/null &
