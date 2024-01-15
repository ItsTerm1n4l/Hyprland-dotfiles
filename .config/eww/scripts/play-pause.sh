#!/bin/bash

if [ "$(playerctl --player=mpv,%any status)" == "Playing" ]
then
echo -e "/home/david/.config/eww/eww_prime/icons/pause.png" #
#󰏦
else
echo "/home/david/.config/eww/eww_prime/icons/play.png" #
#󰐍 
fi
#if [ $1 == "up" ]
#then
#	playerctl -s --player=mpv,%any position 10+
#elif [ $1 == "down" ]
#then
#	playerctl -s --player=mpv,%any position 10-
#fi

#echo "$@" >> ~/output.txt
