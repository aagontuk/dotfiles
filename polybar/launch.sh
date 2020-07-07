!/usr/bin/env bash

# Remove already running instances
killall -q polybar

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload example &
     done
else
    polybar --reload example &
fi
