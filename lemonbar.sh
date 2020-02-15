#!/bin/bash

SDIR=~/dotfiles/tmux
while true; do
	sts=""
	sts="${sts} $($SDIR/mem_status.sh) | "
	sts="${sts} $($SDIR/net_status.sh) | "
	sts="${sts} $($SDIR/bat_status.sh) | "
	sts="${sts} $(date '+%a %b-%d-%Y %I:%M:%S %p') "
	echo "%{r}%{B#9A6324}%{F#000075}$sts"
	sleep 5
done
