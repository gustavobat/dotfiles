# ==============================================================================
#
# ~/.zshrc
#
# ==============================================================================

# Variable settings ============================================================

PATH="$HOME/bin:/usr/local/bin:/usr/share:$PATH"
PATH="$HOME/.scripts:$PATH"

export PATH
export ZSH="/home/gus/.oh-my-zsh"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='emacs -nw'
fi

# Oh My Zsh settings ===========================================================

ZSH_THEME="mingus"

# Enables Oh My Zsh plugins
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# Aliases ======================================================================

alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzshconfig="$EDITOR ~/.oh-my-zsh"
alias i3config="$EDITOR ~/.config/i3/config"
alias polybarconfig="$EDITOR ~/.config/polybar/config"

alias :q="exit"
alias cd..="cd .."

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

alias wfhome="netctl stop-all && netctl start Peppa"
alias wflab="netctl stop-all && netctl start Orlandini"

# ==============================================================================
