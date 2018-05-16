umask 022
ulimit -c 0

export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8
export PAGER=less
# lsのカラー化
# LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35'
# export LS_COLORS
# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=cxfxexdxbxegedabagacad
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'
alias ls='ls -FG'
alias grep='grep --color=auto'

if [ ! -d "${HOME}/.vim/bundle" ]; then
     echo "install neobundle."
     which git && curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
fi

if [[ `uname` == 'Darwin' ]]; then
    export EDITOR=vim
    export PATH=$HOME/bin:$PATH
    alias brew-upgrade-outdated="brew update && brew outdated | awk '{print $1}' | xargs brew upgrade"
    
    GOVERSION=$(brew list go | head -n 1 | cut -d '/' -f 6)
    export GOROOT=$(brew --prefix)/Cellar/go/$GOVERSION/libexec
    export GOPATH=$HOME/src/go
    export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:$GOPATH/bin:$PATH
    . `brew --prefix`/etc/profile.d/z.sh
    export JAVA_HOME=$(/usr/libexec/java_home)
    export PATH=${JAVA_HOME}/bin:$PATH
elif [[ `uname` == 'Linux' ]]; then
    alias composer="hhvm -v ResourceLimit.SocketDefaultTimeout=30 -v Http.SlowQueryThreshold=30000 /usr/local/bin/composer"
fi

alias bex="bundle exec"
export GHQ_ROOT=$HOME/src

export PROMPT="%m:%n%% "
export RPROMPT="[%~]"
export SPROMPT="correct: %R -> %r ? "
export PS1='[\h]\w $ '

if [ -f ~/.bashrc ] ; then
    . ~/.bashrc
fi

export PATH="$HOME/.cargo/bin:$PATH"
