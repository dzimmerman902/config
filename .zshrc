export LANG=en_US.UTF-8
export NVM_DIR="$HOME/.nvm"
export PATH=$HOME/.cargo/bin:$HOME/.local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="tjkirch"

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7

plugins=(git nvm)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
