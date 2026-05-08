#!/bin/bash

PS3='Please select your Window Manager: '
options=("Hyprland" "Sway" "i3" "bspwm" "Exit")
select wm in "${options[@]}"
do
  case $wm in
	"Hyprland") echo "# Bluetooth-Manager-Rofi :)" >> /home/$USER/.config/hypr/hyprland.conf && echo "bind = SUPER, O, exec, /home/$USER/.config/rofi/scripts/blue.sh" >> /home/$USER/.config/hypr/hyprland.conf && echo "Default Keybind is SUPER + O (you can change it in HOME/.config/hypr/hyprland.conf)" && break;;
	"Sway") echo "coming soon";;
	"i3") echo "coming soon";;
	"bspwm") echo "coming soon";;
	"Exit") break;;
	*) echo "invalid option";;
  esac
done
mkdir -p /home/$USER/.config/rofi
cp -r scripts /home/$USER/.config/rofi

