temp1=70
temp2=85

temp=$(sensors | grep -oP 'junction:.*?\+\K[0-9]+')

if [ "$temp" -ge "$temp2" ]; then
  color="#f38ba8"
elif [ "$temp" -ge "$temp1" ]; then
  color="#f2cdcd"
else
  color="#cdd6f4"
fi

echo "<span foreground=\"$color\">$temp</span>°C"