#!/bin/bash

scrot /tmp/screen.png
convert /tmp/screen.png -paint 1 /tmp/screen.png
[[ -f ~/.config/i3/lock.png ]] && convert /tmp/screen.png  ~/.config/i3/lock.png -gravity center -composite -matte /tmp/screen.png
#mogrify -scale 10% -scale 1000% /tmp/screen.png
i3lock -e -f -c 000000 -i /tmp/screen.png
