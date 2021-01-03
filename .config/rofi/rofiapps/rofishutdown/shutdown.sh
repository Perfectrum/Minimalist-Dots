#!/bin/env bash


rofi_command="rofi -theme /home/gzr/.config/polybar/scripts/powerlayout.rasi"
# Options
shutdown="    󰐥   "
reboot="   󰑧    "
lock=" 󰝳  "

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock"

chosen="$(echo -e "$options" | $rofi_command -p "UP - $uptime" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        bash /home/gzr/.config/polybar/scripts/lock.sh
        ;;
esac
