#!/usr/bin/env bash

awk 'BEGIN{FS=","; OFS=" "}{print $2,$1 > $1".smi"} ' no_header.csv 
