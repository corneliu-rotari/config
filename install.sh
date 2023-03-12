#!/bin/sh

# install dependencies configuration
echo "\n\n====[Update system and installing dependencies]====\n\n"
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git zsh curl gcc valgrind g++ make python3 pip3
zsh -c "$(curl -fsSL https://gef.blah.cat/sh)"

# Import profile
cp .zshrc ~
source ~/.zshrc

# Install Node Version Manager 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

# Here should be the instalation of the nerd fonts
echo "\n\nInstalled nerd_fonts [yes/no] : "
read nerd_fonts

if [ $nerd_fonts = "no" ]; then
  echo "\nPlease install them at https://www.nerdfonts.com/"
  exit 0
fi

# Install oh-my-zsh and plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp -r oh-my-zsh ~/.config
(cd $ZSH_CUSTOM/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting)
(cd $ZSH_CUSTOM/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions)

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Neovim version manager and Neovim
cargo install bob-nvim
bob install stable

# Install LunarVim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
cp -r lvim ~/.config

# Install Scala
curl -fL https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz | gzip -d > cs && chmod +x cs && ./cs setup

# Install Java and Intellij
sudo apt update
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt install openjdk-19-jdk
sudo apt install openjdk-19-source
sudo echo "JAVA_HOME=\"/usr/lib/jvm/java-19-openjdk-amd64\"" >> /etc/environment
source /etc/environment
sudo snap install intellij-idea-ultimate --classic
