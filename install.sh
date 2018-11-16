#!/bin/bash
# script to install dotfiles using symlinks

files="bashrc bash_profile bash_aliases gitconfig gitignore_global npmrc Xmodmap" # without dots
files+=" config/mpv/mpv.conf config/mpv/input.conf"

cd ~

for file in $files; do
    ln -sv ~/.dotfiles/.$file ~/.$file
done
