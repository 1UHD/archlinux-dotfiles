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
    hyprctl keyword "monitorv2[${MONITOR}]:bitdepth 8"
    hyprctl keyword "monitorv2[${MONITOR}]:cm auto"
    hyprctl keyword "render:cm_fs_passthrough 0"
    echo "off" > "$STATE_FILE"
    $NOTIFY_CMD -u normal -i display -t 10000 "HDR Disabled"
else
    hyprctl keyword "monitorv2[${MONITOR}]:bitdepth 10"
    hyprctl keyword "monitorv2[${MONITOR}]:cm hdr"
    hyprctl keyword "render:cm_fs_passthrough 1"
    echo "on" > "$STATE_FILE"
    $NOTIFY_CMD -u normal -i display -t 10000 "HDR Enabled"
fi