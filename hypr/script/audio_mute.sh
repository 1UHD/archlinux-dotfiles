#!/bin/bash

msgTag="mydeafen"

pamixer -t

if [[ $(pamixer --get-mute) == "true" ]]; then
    dunstify -a "mute" -u low -i audio-volume-muted-symbolic \
    -h string:x-dunst-stack-tag:$msgTag \
    -t 3000 "Audio muted"
else
    dunstify -a "mute" -u low -i audio-volume-high-symbolic  \
    -h string:x-dunst-stack-tag:$msgTag \
    -t 3000 "Audio unmuted"
fi