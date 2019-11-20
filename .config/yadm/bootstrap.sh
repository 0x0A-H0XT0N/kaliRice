#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run this with root privilage."
  exit
fi

echo "Do you want to install the programs from KaliRice? [y/N]"
read -r install_choice
if [ "$install_choice" != "y" ]; then
  echo "Aborted."
  exit 1
fi

clear
printf "\nUpdating apt\n"
sudo apt-get update

printf "\nInstalling programs\n"
sudo apt-get install pm-utils sl nixnote2 riot-web audacious qbittorrent mpv flameshot stacer atomicparsley ffmpeg spotifycli tor torbrowser-launcher brave-browser filezilla htop i3 i3blocks libreoffice nautilus rofi alsa-utils alsa-tools ranger redshift unclutter dunst xcompmgr putty virtualbox ffmpegthumbnailer imagemagick ntpd

printf "\nInstalling python3 and pip3\n"
sudo apt-get install python3 python3-pip

printf "\nInstalling youtube-dl, pywal\n"
sudo pip3 install youtube-dl pywal pyown

echo "Do you want to install Spotify? [Y/n]"
read -r install_choice
if [ "$install_choice" != "n" ]; then
  printf "\nInstalling Spotify\n"
  curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
  sudo apt-get update && sudo apt-get install -y spotify-client
fi

echo "Do you want to install Discord? [Y/n]"
read -r install_choice
if [ "$install_choice" != "n" ]; then
  printf "\nInstalling Discord\n"
  sudo wget "https://discordapp.com/api/download?platform=linux&format=deb" -nv -O /tmp/discord.deb
  sudo dpkg -i /tmp/discord.deb
  sudo rm -f /tmp/discord.deb
fi

echo "Do you want to install Todoist? [Y/n]"
read -r install_choice
if [ "$install_choice" != "n" ]; then
  printf "\nInstalling Todoist\n"
  sudo wget "https://github.com/KryDos/todoist-linux/releases/download/1.17/Todoist_1.17.0_amd64.deb" -nv -O /tmp/todoist.deb
  sudo dpkg -i /tmp/todoist.deb
  sudo rm -f /tmp/todoist.deb
fi

echo "Do you want to set up time zones? [Y/n]"
read -r install_choice
if [ "$install_choice" != "n" ]; then
  tzselect
fi

echo "Do you want configure ntp? [Y/n]"
read -r install_choice
if [ "$install_choice" != "n" ]; then
  print "Using the Brazilian pool."
  sudo service ntp stop
  echo "server 0.pool.ntp.org
server 1.pool.ntp.org
server 2.pool.ntp.org
server 3.pool.ntp.org" | sudo tee /var/lib/ntp/ntp.drift
  echo "server 0.pool.ntp.org
server 1.pool.ntp.org
server 2.pool.ntp.org
server 3.pool.ntp.org" | sudo tee -a /etc/ntp.conf
  sudo service ntp start
  sudo systemctl enable ntp
fi

printf "\nUpgrading packages\n"
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y

