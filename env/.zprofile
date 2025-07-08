export XDG_CONFIG_HOME=$HOME/.config
export DEV_ENV=$HOME/dotfiles

VIM="nvim"

# bun completions
[ -s "/home/juicetin/.bun/_bun" ] && source "/home/juicetin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export GOPROXY=direct
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:/snap/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH="$PATH":"$HOME/bin"

export VISUAL=$VIM;
export EDITOR=$VIM;

export DEV_ENV=$HOME/dotfiles

#. $HOME/workspace/personal/esp/esp-idf/export.sh 1>/dev/null

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
