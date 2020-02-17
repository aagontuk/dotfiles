#!/bin/bash

df -h | awk '{if ($6 == "/") root=$4; if ($6 == "/home") home=$4} END{if (home != 0) print "/: " root " ~:" home; else print "/: " root}'
