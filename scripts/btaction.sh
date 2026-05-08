#!/bin/bash

while true; do
id="$1"
choice="$(echo -e "󱘖 Connect\n Disconnect\n Trust\n󰆴 Remove" | rofi -dmenu -mesg "$(bluetoothctl devices | awk '{sub(/^Device /,""); print}'| grep "$id" | awk '{print $1, " | ", substr($0, index($0,$2))}')")"
case "$choice" in
	"󱘖 Connect") bluetoothctl connect "$id" ;;
	" Disconnect") bluetoothctl disconnect "$id" ;;
	" Trust") bluetoothctl trust "$id" ;;
	"󰆴 Remove") bluetoothctl remove "$id" ;;
	"") exit ;;
esac
done
