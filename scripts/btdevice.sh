#!/bin/bash

devices=$(bluetoothctl devices | awk '{sub(/^Device /,""); print $1, " | ", substr($0, index($0,$2))}')
choice=$(echo "$devices" | rofi -dmenu -mesg "Paired devices")

id=$(echo "$choice" | awk '{print $1}')

case "$choice" in
	"") exit ;;
esac
~/.config/rofi/scripts/btaction.sh "$id"
