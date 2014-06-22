if [ -f ~/.bashrc ] ; then
    . ~/.bashrc
fi

umask 022

ulimit -c 0

export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8
export PAGER=less
export PROMPT="%m:%n%% "
export RPROMPT="[%~]"
export SPROMPT="correct: %R -> %r ? "
export PS1='[\h]\w $ '
export EDITOR="emacsclient -t"
alias e="emacsclient -t"
alias kill-emacs="emacsclient -e '(kill-emacs)'"
# lsのカラー化
#
#LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35'
#export LS_COLORS
# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=cxfxexdxbxegedabagacad
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'
alias ls='ls -FG'
alias grep='grep --color=auto'

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

if [ ! -d "${HOME}/.vim/bundle" ]; then
    echo "install neobundle."
    which git && curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
fi

export PATH="${HOME}/.cask/bin:$PATH"
export PATH="/Users/Yusuke/.cask/bin:$PATH"

if [ `ps ax | awk '{print $5 $6}' | grep "emacs" | grep "daemon" | wc -l` != 1 ]; then
    emacs --daemon 2>/dev/null
fi
export PATH=/usr/texbin:$PATH
