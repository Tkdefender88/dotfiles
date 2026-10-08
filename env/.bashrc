# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
#

export DEV_ENV="$HOME/dotfiles"
export EDITOR="nvim"

eval "$(starship init bash)"

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/develop/flutter/bin
export PATH="$PATH":"$HOME/.pub-cache/bin"

if command -v skate &> /dev/null
then
  export SIGNOZ_API_KEY="$(skate get gitlab_signoz_mcp_api_key 2> /dev/null)"
fi

bind '"\ef": "tmux-sessionizer\n"'

alias lg="lazygit"
alias edbash="nvim ~/dotfiles/env/.bashrc"
alias reload="source ~/.bashrc"

alias uuid="uuidgen | tr '[:upper:]' '[:lower:]'"
alias uuidshort="uuidgen | tr -d '-' | tr '[:upper:]' '[:lower:]'"
alias nowutc="date -u +'%Y-%m-%dT%H:%M:%S.000000Z'"

alias dcu="docker compose up"
alias dcr="docker compose run --rm"
alias dc="docker compose"

alias freyr='docker run -it --rm -v $PWD:/data freyrcli/freyrjs'
alias eidf='. $HOME/esp/esp-idf/export.sh'
