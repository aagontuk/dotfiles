#!/bin/bash

iw dev wlp3s0 link | awk '{if ($1 == "SSID:") print $2}'
