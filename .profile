#   _   _ _______   _______ _____ _   _ 
#  | | | |  _  \ \ / /_   _|  _  | \ | |
#  | |_| | |/' |\ V /  | | | |/' |  \| |
#  |  _  |  /| |/   \  | | |  /| | . ` |
#  | | | \ |_/ / /^\ \ | | \ |_/ / |\  |
#  \_| |_/\___/\/   \/ \_/  \___/\_| \_/
#                                       
#                                       


# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
# Adds "~/.scripts" and all folders to $PATH
export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':')"
export PATH="$PATH:/bin/lscript"
export FILE="ranger"
export BROWSER="firefox"
export TERMINAL="guake"
export EDITOR="vim"
TZ='America/Fortaleza'; export TZ

# remap caps lock to l-shift
xmodmap -e "keycode 66 = Shift_L NoSymbol Shift_L" 

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi



