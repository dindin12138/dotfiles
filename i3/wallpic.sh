#!/bin/bash
  while true; do
    find ~/'Nutstore Files'/Nutstore/图片/Wallpaper -type f \( -name '*.jpg' -o -name '*.png' \) -print0 | shuf -n1 -z | xargs -0 feh --bg-scale
    sleep 15m
done
