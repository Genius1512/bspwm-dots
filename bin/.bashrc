#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
eval "$(starship init bash)"

shopt -s cdspell

export PATH="$PATH:$HOME/.local/bin/:$HOME/.npm-global/bin"
. "$HOME/.cargo/env"

export GOPATH="$HOME/go"
export EDITOR="lvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
