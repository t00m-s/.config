## Step 0
Have a working arch linux base install (using archinstall with Hyprland preset might actually be ok).
## Step 1
```
sudo pacman -S stow waybar pipewire-audio tmux ttf-jetbrains-mono-nerd brightnessctl udiskie pulseaudio pulseaudio-bluetooth pamixer gammastep cliphist blueman neofetch polkit-kde-agent
```
```
paru wofi xdg-desktop-portal-hyprland-git xwaylandvideobridge-git wpaperd wlogout
```
## Step 2 
Clone this repo, cd into it and then 
```
stow .
```
