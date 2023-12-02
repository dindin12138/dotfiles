#!/usr/bin/env bash

## wlogout actions

# Ask for confirmation
# cdialog () {
# 	yad --title='Confirm?' --borders=15 --center --fixed --undecorated --button=Yes:0 --button=No:1 --text="Are you sure?" --text-align=center
# }

if [[ "$1" == '--shutdown' ]]; then
	# cdialog
	if [[ "$?" == 0 ]]; then
		systemctl poweroff
	else
		exit
	fi
elif [[ "$1" == '--reboot' ]]; then
	# cdialog
	if [[ "$?" == 0 ]]; then
		systemctl reboot
	else
		exit
	fi
elif [[ "$1" == '--hibernate' ]]; then
	# cdialog
	if [[ "$?" == 0 ]]; then
		systemctl hibernate
	else
		exit
	fi
elif [[ "$1" == '--lock' ]]; then
	~/.config/hypr/scripts/lockscreen.sh
elif [[ "$1" == '--suspend' ]]; then
	# cdialog
	if [[ "$?" == 0 ]]; then
		mpc -q pause
		pamixer -t
		~/.config/hypr/scripts/lockscreen.sh
		systemctl suspend
	else
		exit
	fi
elif [[ "$1" == '--logout' ]]; then
	# cdialog
	if [[ "$?" == 0 ]]; then
		kill -9 -1
	else
		exit
	fi
fi
