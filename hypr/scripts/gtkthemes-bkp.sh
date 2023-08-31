#!/usr/bin/env bash

## Set GTK Themes, Icons, Cursor and Fonts

THEME='Catppuccin-Mocha-Standard-Blue-dark'
ICONS='Papirus-Dark'
FONT='FiraCode Nerd Font 10'
CURSOR='Sweet-cursors'

SCHEMA='gsettings set org.gnome.desktop.interface'

apply_themes () {
	${SCHEMA} gtk-theme "$THEME"
	${SCHEMA} icon-theme "$ICONS"
	${SCHEMA} cursor-theme "$CURSOR"
	${SCHEMA} font-name "$FONT"
}

apply_themes