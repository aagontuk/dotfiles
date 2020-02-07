#!/bin/bash

printf "%s %s" `acpi | awk '{print $4}'`\
	`acpi -a | awk '{print $3}'`
