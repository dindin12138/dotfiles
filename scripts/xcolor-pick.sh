#!/usr/bin/env bash

#   ██╗  ██╗ ██████╗ ██████╗ ██╗      ██████╗ ██████╗
#   ╚██╗██╔╝██╔════╝██╔═══██╗██║     ██╔═══██╗██╔══██╗
#    ╚███╔╝ ██║     ██║   ██║██║     ██║   ██║██████╔╝
#    ██╔██╗ ██║     ██║   ██║██║     ██║   ██║██╔══██╗
#   ██╔╝ ██╗╚██████╗╚██████╔╝███████╗╚██████╔╝██║  ██║
#   ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝
# color picker for X.
# Simple Script To Pick Color Quickly Using Gpick.
# Created By: https://github.com/rxyhn

TEMP_DIR=/tmp/xcolor
MSG=${XDG_CACHE_HOME:-$HOME/.cache}/xcolor.msg

EXPIRE_TIME=5000

main() {

    HEX_COLOR=$(gpick -pso --no-newline)
    mkdir -p $TEMP_DIR
    HEX="${HEX_COLOR#\#}"
    FNAME="$TEMP_DIR/$HEX.png"
    convert -size 100x100 xc:"$HEX_COLOR" "$FNAME"
    COLOR_CODE="$HEX_COLOR"

    printf %s "$COLOR_CODE" | xclip -sel c
        notify-send -a "Color Picker" --icon="$FNAME" xcolor-pick "$COLOR_CODE" --expire-time="$EXPIRE_TIME"
}

main
