#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait for the bar to get killed
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar PolybarH0XT0N &
