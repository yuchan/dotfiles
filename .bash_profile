if [ -f ~/.bashrc ] ; then
    . ~/.bashrc
fi

umask 022

ulimit -c 0

export LANG=ja_JP.UTF-8
export PAGER=less
unset LANG
export PROMPT="%m:%n%% "
export RPROMPT="[%~]"
export SPROMPT="correct: %R -> %r ? "
export PS1='[\h]\w $ '

#
# lsのカラー化
#
export LS_COLORS='no=01;37:fi=00:di=01;36:ln=01;32:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;32;01:ex=01;33:*core=01;31:'
alias ls='ls -FG'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

. $HOME/.nvm/nvm.sh

shopt -u sourcepath

complete -d cd
complete -c man
complete -C perldoc-complete -o nospace -o default perldoc

if [ $TERM == xterm ]
then
    export TERM=xterm-color 
fi

function pv() {
    [ -n "$1" ] && perl -e "use $1;print qq|$1: \$$1::VERSION\n|;";
}

function pm() {
  [ -n "$1" ] && perldoc -m $1
}


export DOCKER_HOST=tcp://127.0.0.1:4243
