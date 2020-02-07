#!/bin/bash

free -h | awk '/Mem:/{print $1 " " $3}'
