msgTag="mypause"

if [[ $(playerctl status) == "Paused" ]]; then
    dunstify -u low -h string:x-dunst-stack-tag:$msgTag -t 3000 "Unpaused Player"
    playerctl play
elif [[ $(playerctl status) == "Playing" ]]; then
    dunstify -u low -h string:x-dunst-stack-tag:$msgTag -t 3000 "Paused Player"
    playerctl pause
else
    dunstify -u low -h string:x-dunst-stack-tag:$msgTag -t 3000 "No player detected"
fi