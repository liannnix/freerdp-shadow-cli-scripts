#!/bin/bash

displays=

function get_displays() {
	while read -r i; do
		grep " connected" <<< $i | cut -d " " -f 1
	done <<< $(xrandr -q)
}

for i in $(get_displays); do
	xrandr --output $i --off
done
