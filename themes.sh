#!/usr/bin/env sh
set -euxo pipefail
XDG_CONFIG_HOME=~/.config
# BTOP
cd /tmp
mkdir -p $XDG_CONFIG_HOME/btop/themes
git clone https://github.com/catppuccin/btop.git
cd /tmp/btop/themes
cp catppuccin_latte.theme $XDG_CONFIG_HOME/btop/themes
cp catppuccin_mocha.theme $XDG_CONFIG_HOME/btop/themes


# FUZZEL
cd /tmp
mkdir -p $XDG_CONFIG_HOME/fuzzel/{catppuccin-latte,catppuccin-mocha}
git clone https://github.com/catppuccin/fuzzel.git
cd /tmp/fuzzel/themes
cd catppuccin-latte
mv peach.ini theme.ini
mv theme.ini $XDG_CONFIG_HOME/fuzzel/catppuccin-latte/

cd ../catppuccin-mocha
mv peach.ini theme.ini
mv theme.ini $XDG_CONFIG_HOME/fuzzel/catppuccin-mocha/

# GTK, gpt generated because it's a pain in the ass.
mkdir -p ~/.local/share/themes
cd ~/.local/share/themes
mkdir -p ~/.local/share/themes
export ROOT_URL="https://github.com/catppuccin/gtk/releases/download"
export RELEASE="v1.0.3"

for FLAVOR in latte mocha; do
  if [ "$FLAVOR" = "latte" ]; then
    ACCENT="peach"
  else
    ACCENT="mauve"
  fi

  THEME_ZIP="catppuccin-${FLAVOR}-${ACCENT}-standard+default.zip"
  curl -LOs "${ROOT_URL}/${RELEASE}/${THEME_ZIP}"
  unzip -q "$THEME_ZIP"
  mv "catppuccin-${FLAVOR}-${ACCENT}-standard+default" "$FLAVOR"

  # Copy GTK4 theme files
  mkdir -p "$HOME/.config/gtk-4.0"
  cp -r "$FLAVOR/gtk-4.0/assets" "$HOME/.config/gtk-4.0/assets"
  cp "$FLAVOR/gtk-4.0/gtk.css" "$HOME/.config/gtk-4.0/gtk.css"
  cp "$FLAVOR/gtk-4.0/gtk-dark.css" "$HOME/.config/gtk-4.0/gtk-dark.css"
done

# HYPRLAND
cd /tmp
mkdir -p $XDG_CONFIG_HOME/hypr/themes
git clone https://github.com/catppuccin/hyprland.git
cd /tmp/hyprland/themes
cp latte.conf $XDG_CONFIG_HOME/hypr/themes
cp mocha.conf $XDG_CONFIG_HOME/hypr/themes

# MAKO
cd /tmp
mkdir -p $XDG_CONFIG_HOME/mako/themes
git clone https://github.com/catppuccin/mako.git

cd /tmp/mako/themes/catppuccin-latte/
mv catppuccin-latte-peach catppuccin-latte
  cp catppuccin-latte $XDG_CONFIG_HOME/mako/themes

cd /tmp/mako/themes/catppuccin-mocha/
mv catppuccin-mocha-peach catppuccin-mocha
cp catppuccin-mocha $XDG_CONFIG_HOME/mako/themes

# QT
cd /tmp
git clone https://github.com/catppuccin/qt5ct.git
mkdir -p $XDG_CONFIG_HOME/{qt5ct,qt6ct}/colors
cd /tmp/qt5ct/themes
mv catppuccin-latte-peach.conf catppuccin-latte.conf
mv catppuccin-mocha-peach.conf catppuccin-mocha.conf
cp catppuccin-latte.conf $XDG_CONFIG_HOME/qt5ct/colors/
cp catppuccin-latte.conf $XDG_CONFIG_HOME/qt6ct/colors/
cp catppuccin-mocha.conf $XDG_CONFIG_HOME/qt5ct/colors/
cp catppuccin-mocha.conf $XDG_CONFIG_HOME/qt6ct/colors/

# Waybar
cd /tmp
mkdir -p $XDG_CONFIG_HOME/waybar
git clone https://github.com/catppuccin/waybar.git
cd /tmp/waybar/themes
cp latte.css $XDG_CONFIG_HOME/waybar
cp mocha.css $XDG_CONFIG_HOME/waybar

# SDDM
cd /tmp
wget https://github.com/catppuccin/sddm/releases/download/v1.0.0/catppuccin-mocha.zip
wget https://github.com/catppuccin/sddm/releases/download/v1.0.0/catppuccin-latte.zip
mkdir -p /usr/share/sddm/themes/
unzip catppuccin-mocha.zip -d /usr/share/sddm/themes/  
unzip catppuccin-latte.zip -d /usr/share/sddm/themes/
