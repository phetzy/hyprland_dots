#!/bin/bash

options=$(echo -e "  Poweroff\n  Restart\n  Suspend\n  Logout")

selected_option=$(echo -e "$options" | rofi -dmenu -i -mesg "Bye "$USER"!" -config ~/.config/rofi/power.rasi)

# Handle the selected option
case $selected_option in
    "  Poweroff")
        systemctl poweroff
        ;;
    "  Restart")
        systemctl reboot
        ;;
    "  Suspend")
        systemctl suspend
        ;;
    "  Logout")
        pkill -KILL -u "$USER"
        ;;
esac
