#!/bin/fish
#var=$(playerctl -s --player=mpv,%any metadata --format "{{ duration(position) }}/{{ duration(mpris:length) }}" -F)
while true; 

	set pos $(playerctl -s --player=mpv,%any metadata --format "{{ duration(position) }}" | tr -d : | math / 60)
	set length $(playerctl -s --player=mpv,%any metadata --format "{{ duration(mpris:length) }}" | tr -d : | math / 60)	
	
	echo $(math "100 / ($length / $pos)")
end
