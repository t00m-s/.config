## Step 0
Have a working arch linux base install (using archinstall with Hyprland preset might actually be ok).
## Step 1
```
sudo pacman -S stow waybar pipewire-audio tmux ttf-jetbrains-mono-nerd brightnessctl udiskie pulseaudio pulseaudio-bluetooth pamixer gammastep cliphist blueman neofetch polkit-kde-agent grip slurp eza fzf bat xwaylandvideobridge zoxide otf-font-awesome noto-fonts
```
```
paru wofi xdg-desktop-portal-hyprland-git wpaperd 
```
## Step 2 
Clone this repo, cd into it and then 
```
stow .
```
## Step 3
If you are setting up for CTF i suggest setting up PEDA
```
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
echo "DONE! debug your program with gdb and enjoy"
```
