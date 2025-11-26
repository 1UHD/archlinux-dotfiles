#!/bin/bash

msgTag="mymute"

pamixer --default-source -t

if [[ $(pamixer --default-source --get-mute) == "true" ]]; then
    dunstify -a "mute" -u low -i audio-input-microphone-muted-symbolic \
    -h string:x-dunst-stack-tag:$msgTag \
    -t 3000 "Microphone muted"
    ~/.config/hypr/script/rust-muted-overlay
else
    dunstify -a "mute" -u low -i audio-input-microphone-high-symbolic  \
    -h string:x-dunst-stack-tag:$msgTag \
    -t 3000 "Microphone unmuted"
    killall rust-muted-overlay
fi