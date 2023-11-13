#!/usr/bin/env bash

while true
do 
    wallpaper=$(find $HOME/Wallpapers -type f | shuf -n 1)
    killall swaybg
    swaybg -i $wallpaper -m fill &
    sleep 60
done

