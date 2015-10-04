#!/bin/bash
# script to install dotfiles using symlinks

files="bashrc bash_profile bash_aliases gitconfig gitignore_global npmrc" # without dots

cd ~

for file in $files; do
    ln -sv ~/.dotfiles/.$file ~/.$file
done
