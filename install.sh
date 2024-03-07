#!/bin/bash

sudo apt update

sudo apt install -y \
	lxappearance \
	ranger \
	zsh-autosuggestions \
	zsh-syntax-highlighting \
	neovim \
	zsh \
	arandr \
	rofi \
	snapd \
	i3blocks \
	apache2 \
	mysql-server \
	php \
	libapache2-mod-php \
	php-mysql \
	phpmyadmin \
	composer \
	git

sudo snap instll \
	simplenote \
	obs-studio \
	mailspring \
	dart-sass \
	hugo \
	tmux --classic \
	codium --classic

# Go
curl -OL https://golang.org/dl/go1.16.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.16.7.linux-amd64.tar.gz

# Mysql
sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
exit

# Brave
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Tmuxifier
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier

# TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Valet Linux
composer global require cpriego/valet-linux
export PATH=$PATH:~/.config/composer/vendor/bin
valet install

# My Projects
mkdir ~/Progetti
cd ~/Progetti
valet park

# git clone https://github.com/albertoreineri/TypeWrite-Laravel.git
git clone https://github.com/albertoreineri/albertoreineri.github.io.git

# Fusuma
sudo gpasswd -a $USER input
newgrp input
sudo apt-get install libinput-tools
sudo apt-get install ruby
sudo gem install fusuma
sudo apt-get install xdotool
mkdir -p ~/.config/fusuma        

# My Dot Files

#i3

#i3Blocks

# Dot files