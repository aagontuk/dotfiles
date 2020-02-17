#!/bin/bash

interface=`/sbin/ip a | awk '/^[0-9]/{if ($2 ~ "wlp") print substr($2, 1, length($2))}'`
/sbin/iw dev $interface link | awk '/^Not/{print "W: Not Connected"}{if ($1 == "SSID:") print "W: " $2}'
