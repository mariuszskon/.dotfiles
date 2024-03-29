#!/bin/bash
# script to install dotfiles using symlinks

files="bashrc bash_profile bash_aliases gitconfig gitignore_global npmrc Xmodmap" # without dots
files+=" config/mpv config/alacritty/alacritty.toml config/mpd/mpd.conf vim"

cd ~

for file in $files; do
    ln -sv ~/.dotfiles/.$file ~/.$file
done
