#!/bin/bash

msgTag="myvolumechange"

volume=$(pamixer --get-volume)

dunstify -a "volume_change" -u low \
-h string:x-dunst-stack-tag:$msgTag \
-h int:value:$volume -t 3000 "Volume: $volume"