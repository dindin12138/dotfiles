#!/usr/bin/env bash

## Autostart Programs

# Kill already running process
_ps=(waybar mako mpd xfce-polkit polkit-gnome-authentication-agent-1)
for _prs in "${_ps[@]}"; do
	if [[ $(pidof ${_prs}) ]]; then
		killall -9 ${_prs}
	fi
done

# Polkit agent
# /usr/lib/xfce-polkit/xfce-polkit &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Set wallpaper
swaybg --output '*' --mode fill --image ~/Pictures/wallpaper.png &


# Apply themes
# ~/.config/hypr/scripts/gtkthemes-bkp.sh &

# Lauch notification daemon (mako)
exec mako &

# Lauch waybar
exec waybar --bar main-bar --log-level error &

exec fcitx5 -d &

#exec mpd &

exec cfw &

#exec nutstore &
