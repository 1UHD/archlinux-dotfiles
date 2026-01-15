#!/usr/bin/env bash

# Get metadata
artist=$(playerctl metadata --format '{{artist}}')
title=$(playerctl metadata --format '{{title}}')

# Optional: bail out if nothing is playing
[ -z "$artist" ] && [ -z "$title" ] && exit 0

# Send notification: summary = artist, body = title
dunstify "$artist" "$title"