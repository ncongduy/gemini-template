#!/usr/bin/env bash
PAYLOAD="$(cat)"
MSG="$(printf '%s' "$PAYLOAD" | jq -r '.message // "Gemini needs your attention"' 2>/dev/null || echo "Gemini needs your attention")"
notify-send -a 'Gemini CLI' -u critical -i dialog-question 'Gemini CLI' "$MSG" >/dev/null 2>&1 &
canberra-gtk-play -i bell >/dev/null 2>&1 &
exit 0
