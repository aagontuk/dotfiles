#!/bin/bash

interface=`ip a | awk '/^[0-9]/{if ($2 ~ "wlp") print substr($2, 1, length($2))}'`
iw dev $interface link | awk '{if ($1 == "SSID:") print $2}'
