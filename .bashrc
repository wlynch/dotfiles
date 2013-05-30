# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

. ~/.git-prompt.sh
. ~/.git-completion.bash

# User specific aliases and functions
export PATH="$PATH:/bin:/sbin:$HOME/bin"
export EDITOR=vim
export CLASSPATH=$CLASSPATH
export PS1='[\u@\h \W$(__git_ps1 "(%s)")]\$ '
