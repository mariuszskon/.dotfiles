# ~/.bashrc

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history by ignoring ups and space prefixes
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# PATHs
export PATH=${PATH}:~/android/android-sdk-linux/tools:~/android/android-sdk-linux/platform-tools
export PATH=${PATH}:~/npm-global/bin

# PS1
CLEAR="\e[0m"
BLUE="\e[34m"
GREEN="\e[32m"
WHITE="\e[37m"

PS1="\[$BLUE\]""\u ""\[$GREEN\]""\w ""\[$WHITE\]""\$ \[$CLEAR\]"

# beautiful ls (solarized)
eval `dircolors ~/.dotfiles/.config/dircolors-solarized-ansi-dark`

# Alias definitions.
. ~/.bash_aliases

# "private" definitions
. ~/.bash_priv
