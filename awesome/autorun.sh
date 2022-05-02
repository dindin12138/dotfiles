#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run volumeicon
run picom -b
run nm-applet
run xfce4-power-manager
run pamac-tray
run fcitx5
run variety
run kdeconnect-indicator
run qv2ray