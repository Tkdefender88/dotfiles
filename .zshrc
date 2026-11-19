# It you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/justin.bak/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# automatically update zsh without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias reload='source ~/.zshrc'

alias gpr="gh pr create"
alias dcu="docker compose up"
alias dcr="docker compose run --rm"
alias dc="docker compose"
alias lg="lazygit"

alias uuid="uuidgen | tr '[:upper:]' '[:lower:]'"
alias uuidshort="uuidgen | tr -d '-' | tr '[:upper:]' '[:lower:]'"
alias nowutc="date -u +'%Y-%m-%dT%H:%M:%S.000000Z'"

alias work="timer 45m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/pumpkin.jpeg'\
        -sound Crystal"
        
alias rest="timer 10m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -appIcon '~/Pictures/pumpkin.jpeg'\
        -sound Crystal"

alias gocov="gocovsh --profile=coverage.txt"

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
 export EDITOR='nvim'
else
 export EDITOR='nvim'
fi

# Point a stable path at the forwarded ssh agent so tmux panes survive reconnects
if [[ -n $SSH_CONNECTION && -S $SSH_AUTH_SOCK && $SSH_AUTH_SOCK != $HOME/.ssh/ssh_auth_sock ]]; then
 ln -sf "$SSH_AUTH_SOCK" "$HOME/.ssh/ssh_auth_sock"
 export SSH_AUTH_SOCK="$HOME/.ssh/ssh_auth_sock"
fi

export PATH="$PATH:/usr/local/bin/elixir"
export VISUAL=nvim
export GIT_EDITOR="$VISUAL"
export EDITOR="$VISUAL"

export PATH=$PATH:~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools

export PATH="$PATH:$HOME/.rbenv/bin"
export PATH="$PATH:$HOME/.local/bin"

export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"

function () {
  if command -v skate &> /dev/null
  then
    local cloudsmith_key="$(skate get cloudsmith_api_key 2> /dev/null)"
    local cloudsmith_user="$(skate get cloudmith_user 2> /dev/null)"
    export CLOUDSMITH_API_KEY=$cloudsmith_key
    export CLOUDSMITH_USER=$cloudmith_user
  fi
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/justin.bak/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/justin.bak/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/justin.bak/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/justin.bak/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

if [ -f "$HOME/.asdf/asdf.sh" ]; then
  . "$HOME/.asdf/asdf.sh"
fi

bindkey -s "^[f" "tmux-sessionizer\n"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/justin.bak/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

export NVM_DIR="$HOME/.nvm"
# Lazy-load nvm — saves ~450ms; loads on first use of nvm/node/npm/npx
_load_nvm() {
  unset -f nvm node npm npx yarn
  [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"
}
nvm() { _load_nvm; nvm "$@"; }
node() { _load_nvm; node "$@"; }
npm() { _load_nvm; npm "$@"; }
npx() { _load_nvm; npx "$@"; }
yarn() { _load_nvm; yarn "$@"; }

if command -v wt >/dev/null 2>&1; then eval "$(command wt config shell init zsh)"; fi
