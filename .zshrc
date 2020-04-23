#
# ~/.zshrc
# Gustavo Batistela, 14/03/2020
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
PATH="$HOME/Programs/bin:$PATH"
export PATH

# User aliases
alias zshconfig="nvim ~/.zshrc"
alias vimconfig="nvim ~/.config/nvim/init.vim"

alias cd..="cd .."
alias :q="exit"

alias please='sudo $(fc -ln -1)'

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias clion="clion.sh"

