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

alias reload="source ~/.zshrc"
alias config="cd ~/.config"
alias edbash="nvim ~/.zshrc && reload"
alias vim="nvim"

alias nowutc="date -u +'%Y-%m-%dT%H:%M:%S.000000Z'"
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]'"

# Load API keys from Skate
if command -v skate &> /dev/null; then
    export OPENAI_API_KEY=$(skate get open_ai_api_key 2>/dev/null)
fi

fastfetch
