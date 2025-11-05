#!/bin/bash

cpu_usage=$(top -bn1 | grep "^%Cpu" | awk '{print $2}' | cut -d'%' -f1)

echo "${cpu_usage}%"