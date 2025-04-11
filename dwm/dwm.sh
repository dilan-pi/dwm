
#!/bin/sh

# Load Xresources
xrdb -merge ~/.Xresources

# Set screen brightness
xbacklight -set 10 &

# Set wallpaper
feh --bg-fill ~/Pictures/wallhaven-zywe5j.jpg &

# Configure keyboard repeat rate
xset r rate 200 50

# Start compositor
picom &

# Start notification daemon
dunst &

# Turn off numlock
numlockx off

# Loop dwm to reload it on crash or restart
while type dwm >/dev/null; do
    dwm
done

