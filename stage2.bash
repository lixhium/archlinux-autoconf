#!/bin/bash
#
# run this when login as root for automaticly configure my L skibidi rizz

git clone https://github.com/lixhim/conf

mv ./conf/nvim ~/.config/.
mv ./conf/wm/ ~/Documents/.
mv ./conf/.xinitrc ~/.

echo "compile the dwm yourself, the dwm was in the ~/Documents/wm directory"
