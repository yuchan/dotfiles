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
export EDITOR="vi"
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

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

. $HOME/.nvm/nvm.sh

if [[ $SHELL = '/bin/bash' ]];then
    shopt -u sourcepath

    complete -d cd
    complete -c man
    complete -C perldoc-complete -o nospace -o default perldoc
fi

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

if [ ! -d "${HOME}/.vim/bundle" ]; then
    echo "install neobundle."
    which git && curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
fi

export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"
