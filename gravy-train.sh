#!/bin/bash
# using animated-wallpaper from https://github.com/Ninlives/animated-wallpaper

VIDEOPATH=  # accepts .mp4 files
while true
do
	ISMUSICPLAYING=$(grep RUNNING /proc/asound/card*/pcm*/sub*/status)
	ISBACKGROUNDANIMATED=$(pgrep animated)
	if [ -n "$ISMUSICPLAYING" ]
        then 
		if [ -z "$ISBACKGROUNDANIMATED" ]
		then
			animated-wallpaper $VIDEOPATH &
		fi
       	else 
		killall animated-wallpaper
	fi
	sleep 1s
done
