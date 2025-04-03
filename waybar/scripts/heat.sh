temp1=85
temp2=95
temp3=105

temp=$(sensors | grep -oP 'Package.*?\+\K[0-9]+')

if [ "$temp" -ge "$temp3" ]; then
    color="#990303"
    icon=""
elif [ "$temp" -ge "$temp2" ]; then
    color="#ff0505"
    icon=""
elif [ "$temp" -ge "$temp1" ]; then
    color="#ff6d05"
    icon=""
else
    color="#cdd6f4"
    icon=""
fi

echo "<span foreground=\"$color\">$icon $temp°C</span>"