#!/bin/bash


STATE_FILE="${HOME}/.config/hypr/temp/hypr-hdr-state"
MONITOR="DP-1"
NOTIFY_CMD="dunstify"

if [[ -f "$STATE_FILE" ]]; then
    STATE=$(cat "$STATE_FILE")
else
    STATE="on"
    $NOTIFY_CMD -t 3000 "HDR Toggle"
fi

if [[ "${STATE}" == "on" ]]; then
    hyprctl eval 'hl.monitor({ output = "DP-1", bitdepth = 8, cm = "auto" })'
    echo "off" > "$STATE_FILE"
    $NOTIFY_CMD -u normal -i display -t 10000 "HDR Disabled"
else
    hyprctl eval 'hl.monitor({ output = "DP-1", bitdepth = 10, cm = "hdr" })'
    echo "on" > "$STATE_FILE"
    $NOTIFY_CMD -u normal -i display -t 10000 "HDR Enabled"
fi