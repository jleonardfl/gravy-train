First bash script so definitely janky
Uses animated-wallpaper from https://github.com/Ninlives/animated-wallpaper
Starts animated-wallpaper when music is playing, kills it when music isn't playing

Music detection works by checking /proc/asound/card\*/pcm\*/status to see if anything is running
