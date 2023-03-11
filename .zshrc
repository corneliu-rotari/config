export PATH=$HOME/.local/bin:$HOME/.local/share/bob/nvim-bin:$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH

export ZSH=~/.oh-my-zsh

ZSH_THEME="pixegami-agnoster"

export UPDATE_ZSH_DAYS=14

ZSH_CUSTOM=~/.config/oh-my-zsh

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export EDITOR='lvim'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
