# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="risto"

# Example aliases
alias irssi='TERM="screen-256color" irssi'
alias tmux='tmux -2'

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# oh-my-zsh plugins
plugins=(git brew go tmux github zsh_reload pip zsh-completions)

source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

# User configuration
PATH=""
PATHDIRS=(
/usr/local/bin
/usr/bin
/bin
/usr/sbin
/sbin
/opt/X11/bin
/usr/texbin
/Users/wlynch/.local/bin
/Users/wlynch/bin
/usr/local/mysql/bin
/Applications/Xcode.app/Contents/Developer/usr/bin
/Users/wlynch/.local/google-cloud-sdk/bin
~/.gem/ruby/2.0.0/bin
)
for dir in $PATHDIRS; do
	if [ -d $dir ]; then
		export PATH=$PATH:$dir
	fi
done

export EDITOR="vim"

function mkcd {
  dir="$*";
  mkdir -p "$dir" && cd "$dir";
}

# Disable zsh history sharing.
setopt no_share_history

# CLI Colors
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

# Golang
export GOPATH=$HOME/projects

# Docker
alias dm=docker-machine

# gcloud
source $HOME/.local/google-cloud-sdk/path.zsh.inc
source $HOME/.local/google-cloud-sdk/completion.zsh.inc
