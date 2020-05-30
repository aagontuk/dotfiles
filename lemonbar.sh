#!/bin/bash

SDIR=~/dotfiles/tmux
while true; do
	sts=""
	sts="${sts} $($SDIR/mem_status.sh) | "
	sts="${sts} $($SDIR/disk_status.sh) | "
	sts="${sts} $($SDIR/net_status.sh) | "
	sts="${sts} $($SDIR/bat_status.sh) | "
    sts="${sts} $(curl -s wttr.in?format=3) | "
	sts="${sts} $(date '+%a %b-%d-%Y %I:%M:%S %p') "
    lsts="$(~/dotfiles/lemonbar/wspace_status.sh)"
	echo "%{l}$lsts%{r}%{B#9A6324}%{F#000075}$sts"
	sleep 1
done
