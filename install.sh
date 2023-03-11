#!/bin/sh

# install dependencies configuration
echo "\n\n====[Update system and installing dependencies]====\n\n"
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git zsh curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
nvm install --lts


# Here should be the instalation of the nerd fonts
read -p "\n\nInstalled nerd_fonts [yes/no] : " nerd_fonts

if [ $nerd_fonts = "no" ]; then
  echo "\nPlease install them at https://www.nerdfonts.com/"
  exit 0
fi

# install terminal
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~
source ~/.zshrc
cp -r oh-my-zsh ~/.config


(cd $ZSH_CUSTOM/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting)
(cd $ZSH_CUSTOM/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions)
