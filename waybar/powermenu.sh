#!/usr/bin/env bash

if pgrep -x tofi >/dev/null; then
  killall -q tofi
  exit 0
fi

choice=$(printf "%s\n" "Suspend" "Reboot" "Shut Down" | tofi --prompt-text "Power" --width 300 --height 200)

case "$choice" in
  "Suspend") swaylock -f && systemctl suspend ;;
  "Reboot") systemctl reboot ;;
  "Shut Down") systemctl poweroff ;;
esac
