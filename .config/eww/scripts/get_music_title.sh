#!/bin/bash
while true
do
playerctl --player=mpv,%any metadata --format '{{ artist }}:{{ title }}'
done
