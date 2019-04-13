#!/bin/sh

[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

xset r rate 200 50

# preventing the screen from going blank
setterm --blank 0 --powersave off --powerdown 0
xset s off

exec i3
