

#   _   _ _______   _______ _____ _   _ 
#  | | | |  _  \ \ / /_   _|  _  | \ | |
#  | |_| | |/' |\ V /  | | | |/' |  \| |
#  |  _  |  /| |/   \  | | |  /| | . ` |
#  | | | \ |_/ / /^\ \ | | \ |_/ / |\  |
#  \_| |_/\___/\/   \/ \_/  \___/\_| \_/
#                                       
#                                       

export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':')"
export PATH="$PATH:/bin/lscript"
export FILE="ranger"
export BROWSER="firefox"
export TERMINAL="guake"
export EDITOR="vim"
TZ='America/Fortaleza'; export TZ


#!/bin/bash
# ls aliases
alias lsh="ls -lh"
alias ls='ls --color=auto'
alias lsa="ls -lha"

# ping alias
alias google="ping -c4 8.8.8.8"

# lscript alias
alias l="sudo /bin/lscript/l"

# handy for notebooks
alias battery="upower -i $(upower -e | grep 'BAT') | grep -E 'percentage'"

# copy output to clipboard
alias copy="xclip -i -selection clipboard"

# more aliases 
alias j="jobs -l"
alias e="vim"
alias v="vim"
alias r="ranger"
alias sd="sudo ranger"
alias mkdir="mkdir -pv"
alias sdn="sudo shutdown now"

# youtube-dl
alias yt="youtube-dl --restrict-filenames -o '%(title)s.%(ext)s' --merge-output-format mp4 -f 'best[ext=mp4]/best' --embed-thumbnail --add-metadata --xattrs --prefer-ffmpeg"
alias yta="youtube-dl --restrict-filenames -o '%(title)s.%(ext)s' -f 'best' --prefer-ffmpeg --extract-audio --audio-format mp3 --embed-thumbnail --add-metadata"
