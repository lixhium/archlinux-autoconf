#!/bin/bash
#
# run this when login as root for automaticly configure my L skibidi rizz

git clone https://github.com/lixhim/conf

mv ./conf/nvim ~/.config/.
mv ./conf/wm/ ~/Documents/.
mv ./conf/.xinitrc ~/.

rm -rf ./conf

echo "installing all the software I need"
pacman -S pipewire pipewire-pulse wireplumber pavucontrol xorg-server xorg-xinit xorg-xrandr xorg-xsetroot xf86-video-amdgpu\
    mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon noto-fonts nerd-fonts terminus-font wget curl htop neofetch

echo "compile the dwm yourself, the dwm was in the ~/Documents/wm directory"
