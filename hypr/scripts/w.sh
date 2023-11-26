#!/bin/bash

DIR=$HOME/Pictures/wallpaper/
PICS=($(ls ${DIR}))
RANDOMPICS=${PICS[$RANDOM % ${#PICS[@]}]}

#change-wallpaper using swww
swww img ${DIR}/${RANDOMPICS} --transition-type any
