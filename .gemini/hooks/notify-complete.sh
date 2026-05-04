#!/usr/bin/env bash
cat >/dev/null
notify-send -a 'Gemini CLI' -i dialog-information 'Gemini CLI' 'Task complete' >/dev/null 2>&1 &
canberra-gtk-play -i complete >/dev/null 2>&1 &
exit 0
