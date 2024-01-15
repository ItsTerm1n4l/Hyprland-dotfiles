#!/bin/bash

playerctl -s --player=mpv,%any metadata --format "{{ duration(position) }}/{{ duration(mpris:length) }}" -F
#playerctl -s --player=mpv,%any metadata --format "{{ duration(position) }}" -F
#echo $(playerctl -s --player=mpv,%any metadata --format "{{ duration(position) }}/{{ duration(mpris:length) }}" -F)



