# Bluetooth-Manager-Rofi
Pretty simple bash Bluez daemon Manager for rofi dmenu

Dependencies:<br>
> rofi<br>
> git<br>
> bluez<br>

<h1>Installation:</h1>

Installing Dependecies:<br>
> Arch:<br>
```
sudo pacman -Syu rofi git bluez
```
```
sudo systemctl enable --now bluez
```
> Ubuntu:<br>
```
sudo apt update && sudo apt upgrade && sudo apt install rofi git bluez
```
```
sudo systemctl enable --now bluez
```
Adjust for your package manager<br>

Installing the manager:<br>
```
git clone https://github.com/TheUrielle/Bluetooth-Manager-Rofi.git
cd Bluetooth-Manager-Rofi
chmod +x install.sh
./install.sh
```
<h1>IMPORTANT!!!</h1>

The installer fully supports only hyprland for now. The scripts get installed in the ```$home/.config/rofi/scripts``` folder and you need to assign the keybinds for the script manually.<br>

Planned Adittions:<br>
> - Multi WM and DE support out of the box.<br>
> - Selecting Keyboard shortcut during installation.<br>
> - Fixing some weird glitches with the rofi windows.<br>
