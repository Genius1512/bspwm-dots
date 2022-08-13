#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
eval "$(starship init bash)"

export PATH="$PATH:$HOME/.local/bin/:$HOME/.npm-global/bin"
. "$HOME/.cargo/env"
