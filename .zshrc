# ==============================================================================
#
# ~/.bashrc
#
# ==============================================================================

# Variable settings ============================================================
PATH="$HOME/bin:/usr/local/bin:$PATH"
PATH="$HOME/.scripts:$PATH"

export PATH
export LANG=en_US.UTF-8
export ZSH="/home/gus/.oh-my-zsh"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='emacs'
fi

# Oh My Zsh settings ===========================================================
ZSH_THEME="mingus"

# Enables Oh My Zsh plugins
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# Aliases ======================================================================
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# ==============================================================================
