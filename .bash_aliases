

#   _   _ _______   _______ _____ _   _ 
#  | | | |  _  \ \ / /_   _|  _  | \ | |
#  | |_| | |/' |\ V /  | | | |/' |  \| |
#  |  _  |  /| |/   \  | | |  /| | . ` |
#  | | | \ |_/ / /^\ \ | | \ |_/ / |\  |
#  \_| |_/\___/\/   \/ \_/  \___/\_| \_/
#                                       
#                                       


#!/bin/bash
# ls aliases
alias lsh="ls -lh"
alias ls='ls --color=auto'
alias lsa="ls -lha"

# ping alias
alias google="ping -c4 8.8.8.8"

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

# dmenu integration with pywal
alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'

# ssh aliases
alias war0fPr0xy='ssh -p2364 root@192.168.0.3'
alias rpi='ssh -p2364 root@kalashnikov.sytes.net'
alias warMachine='ssh -p2364 h0xt0n@192.168.0.2'

# mgtow-archive
alias content-archiver="python3 ~/code/projects/content-archiver/content-archiver.py"

# youtube-dl
alias yt="youtube-dl --add-metadata -i" # Download video link
alias yta="yt -x -f bestaudio/best" # Download only audio

# jetbrains IDEs

#alias charm="~/code/ide/pycharm-2019.1.3/bin/pycharm.sh"
#alias webstorm="~/code/ide/WebStorm-191.7479.14/bin/webstorm.sh"

