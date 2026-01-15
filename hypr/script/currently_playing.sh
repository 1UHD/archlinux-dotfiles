#!/usr/bin/env bash

status=$(playerctl status 2>/dev/null)

if [[ "$status" == "Playing" ]]; then
    artist=$(playerctl metadata --format '{{artist}}')
    title=$(playerctl metadata --format '{{title}}')
    dunstify -t 3000 "$artist" "$title"
else
    dunstify -t 3000 "No player detected"
fi
