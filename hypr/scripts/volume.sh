#!/usr/bin/env bash

## Script To Manage Speaker Volume For Archcraft (in Wayland).

iDIR="$HOME/.config/mako/icons"

# Get Volume
get_volume() {
	volume=$(pamixer --get-volume | awk -F ' ' '{print $1}' | tr -d '[]')
	echo "$volume"
}

# Get icons
get_icon() {
	vol="$(get_volume)"
	current="${vol%%%}"
	if [[ "$current" -eq "0" ]]; then
		icon="$iDIR/volume-mute.png"
	elif [[ ("$current" -ge "0") && ("$current" -le "30") ]]; then
		icon="$iDIR/volume-low.png"
	elif [[ ("$current" -ge "30") && ("$current" -le "60") ]]; then
		icon="$iDIR/volume-mid.png"
	elif [[ ("$current" -ge "60") && ("$current" -le "100") ]]; then
		icon="$iDIR/volume-high.png"
	fi
}

# Notify
notify_user() {
	notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$icon" "Volume : $(get_volume)"
}

# Increase Volume
inc_volume() {
	# amixer -Mq set Master,0 5%+ unmute && get_icon && notify_user
	pamixer -i 3 && get_icon && notify_user
}

# Decrease Volume
dec_volume() {
	# amixer -Mq set Master,0 5%- unmute && get_icon && notify_user
	pamixer -d 3 && get_icon && notify_user
}

# Toggle Mute
toggle_mute() {
	amixer get Master | grep '\[on\]' &>/dev/null
	if [[ "$?" == 0 ]]; then
		pamixer -t && notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$iDIR/volume-mute.png" "Mute"
	else
		pamixer -t && get_icon && notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$icon" "Unmute"
	fi
}

# Toggle Mic
toggle_mic() {
	amixer get Capture | grep '\[on\]' &>/dev/null
	if [[ "$?" == 0 ]]; then
		pamixer -t && notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$iDIR/microphone-mute.png" "Microphone Switched OFF"
	else
		pamixer -t && get_icon && notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$iDIR/microphone.png" "Microphone Switched ON"
	fi
}

# Execute accordingly
if [[ "$1" == "--get" ]]; then
	get_volume
elif [[ "$1" == "--inc" ]]; then
	inc_volume
elif [[ "$1" == "--dec" ]]; then
	dec_volume
elif [[ "$1" == "--toggle" ]]; then
	toggle_mute
elif [[ "$1" == "--toggle-mic" ]]; then
	toggle_mic
else
	get_volume
fi
