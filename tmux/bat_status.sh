#!/bin/bash

SYS=/sys/class/power_supply/
BAT="${SYS}$(ls $SYS | grep BAT)"
AC="${SYS}$(ls $SYS | grep AC)"

printf "%s%% %s" $(cat $BAT/capacity) $(cat $AC/online | awk '{if ($1 == 1) print "on-line"; else print "off-line"}')
