#
# .zshrc
# Gustavo Batistela, 14/03/2019
#

# Oh My Zsh stuff
export ZSH="/home/gus/.oh-my-zsh"
ZSH_THEME="gallois"

HYPHEN_INSENSITIVE="true"

plugins=(git copyfile copydir)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='nvim'

PATH="$HOME/.scripts:$PATH"
export PATH

# Example aliases
alias zshconfig="nvim ~/.zshrc"

alias cd..="cd .."
alias :q="exit"

alias please='sudo $(fc -ln -1)'

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

