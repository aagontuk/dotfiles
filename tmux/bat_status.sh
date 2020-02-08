#!/bin/bash

printf "%s %s" `acpi | awk '{print substr($4, 1, length($4)-1) "%"}'`\
	`acpi -a | awk '{print $3}'`
