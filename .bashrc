# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
mail = "mbougrin@student.42.fr"
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias ccw="gcc -Wall -Wextra -Werror -ggdb"
alias lla="ls -la"
alias ..="cd .. && ll"
alias grep="grep --color=auto"

# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

LANG="en_US.UTF-8"
export LANG
LANGUAGE="en_US.UTF-8"
export LANGUAGE
LC_ALL="en_US.UTF-8"
