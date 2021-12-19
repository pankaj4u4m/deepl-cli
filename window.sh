while eval $(xdotool getmouselocation --shell); do if [[ "$X" -ge "$1" && "$X" -le "$(($1 + 1000))" && "$Y" -ge "$2" && "$Y" -le "$(($2 + 700))" ]]; then sleep 1; else exit; fi; done
