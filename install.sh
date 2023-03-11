#!/bin/sh

# install dependencies configuration
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git zsh curl

# install terminal
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
