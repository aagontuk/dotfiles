#!/bin/bash

i3-msg -t get_workspaces | jq '.[] | .name' | xargs | awk '{for(i=1;i<=NF;i++){printf("%d", $i); if(i != NF) printf(" ");}}'
