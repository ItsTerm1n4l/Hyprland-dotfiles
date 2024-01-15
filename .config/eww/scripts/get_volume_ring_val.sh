#!/bin/fish
math $(playerctl -s --player=mpv,%any metadata --format "{{ duration(position) }}" | awk -F'[:]' '{ print $1 $2}') / 100