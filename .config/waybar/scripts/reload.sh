#!/bin/sh
#
#
# STARTS WAYBAR
#
#
killall waybar

if [[ $USER = "fetzy" ]]
then
    waybar -c ~/.config/waybar/config.jsonc & -s ~/.config/waybar/style.css
else
    waybar &
fi
