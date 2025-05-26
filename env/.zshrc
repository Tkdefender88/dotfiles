export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="jispwoso"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

tmux=$(which tmux)
alias tmux="$tmux -2"

alias dc="docker compose"
alias dcu="docker compose up"
alias dcr="docker compose run --rm"

alias reload="source ~/.config/zsh/.zshrc"
alias config="cd ~/.config"
alias edbash="nvim ~/.zshrc && reload"

alias nowutc="date -u +'%Y-%m-%dT%H:%M:%S.000000Z'"
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]'"

# bun completions
[ -s "/home/juicetin/.bun/_bun" ] && source "/home/juicetin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export GOPROXY=direct
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:/snap/bin
export PATH="$PATH":"$HOME/bin"

export VISUAL=nvim;
export EDITOR=nvim;

export DEV_ENV=$HOME/dotfiles

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

fastfetch
