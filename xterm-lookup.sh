#!/bin/sh
eval $(xdotool getmouselocation --shell --prefix=START_)
# -hold : hold the terminal until closed manually.
# xterm -fa 'Monospace' -fs 10  +sb -geometry 50x15+$START_X+$START_Y -e "trans de:en $(wl-paste --primary) && sleep 3"

WORD="$(wl-paste --primary)"
xterm -fa 'Monospace' -fs 10  +sb -geometry 60x20+$START_X+$START_Y -T "deepl de:en $WORD" -e "deepl.sh $WORD && window.sh $START_X $START_Y"
