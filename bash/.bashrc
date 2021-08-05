#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
$HOME/.config/scripts/1920x1080.sh
export PATH=$PATH:/home/arch/.config/scripts/