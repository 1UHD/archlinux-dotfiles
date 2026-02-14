#!/bin/bash

# Configuration
WALLPAPER_DIR="$HOME/.config/wallpapers"
# Supported swww formats: avif, bmp, farbfeld, gif, jpeg, jpg, png, pnm, svg, tga, tiff, webp
VALID_EXTENSIONS="jpg|jpeg|png|gif|webp|bmp|svg|avif|tga|tiff|pnm|ff"

# Check if directory exists
if [ ! -d "$WALLPAPER_DIR" ]; then
    notify-send "Wallpaper Error" "Directory $WALLPAPER_DIR not found."
    exit 1
fi

# List files and filter by extension
# We use grep -Ei to be case-insensitive
selection=$(ls "$WALLPAPER_DIR" | grep -Ei "\.($VALID_EXTENSIONS)$" | rofi -dmenu -i -p "Select Wallpaper:")

# If a selection was made, apply it
if [ -n "$selection" ]; then
    swww img "$WALLPAPER_DIR/$selection" \
        --transition-type wipe \
        --transition-angle 30 \
        --transition-fps 60
fi
