#!/bin/bash

printf "%s%% %s" $(cat /sys/class/power_supply/BAT0/capacity) $(cat /sys/class/power_supply/AC/online | awk '{if ($1 == 1) print "on-line"; else print "off-line"}')
