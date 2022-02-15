#!/bin/bash

lang=$(swaymsg -t get_inputs | jq -r '.[] | select(.identifier == "2522:64020:COMPANY__USB_Device__Keyboard") | .xkb_active_layout_name' | sed -n 2p)

status=$(
  case "$lang" in
    ("Russian")      echo "$HOME/.config/nwg-panel/icons-lang/ru.svg" ;;
    ("English (US)") echo "$HOME/.config/nwg-panel/icons-lang/us.svg" ;;
  esac)


echo ${status}
