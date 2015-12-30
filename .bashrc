if [[ `uname` == 'Darwin' ]]; then
    export EDITOR="/usr/bin/vim"
    export PATH=/usr/local/heroku/bin:$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$HOME/local/bin:$PATH
    export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
    alias brew-upgrade-outdated="brew update && brew outdated | awk '{print $1}' | xargs brew upgrade"
    export PATH=/usr/texbin:$PATH
    eval "$(docker-machine env default)"
    # added by travis gem
    [ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

    export GOROOT=/usr/local/go
    export GOPATH=$HOME/work/goworkspace
    export PATH=$GOPATH/bin:$PATH
    . `brew --prefix`/etc/profile.d/z.sh
elif [[ `uname` == 'Linux' ]]; then
    alias composer="hhvm -v ResourceLimit.SocketDefaultTimeout=30 -v Http.SlowQueryThreshold=30000 /usr/local/bin/composer"
fi

if [[ -f ~/.bash_secret ]]; then
    . ~/.bash_secret
fi

alias emacs='emacsclient -nw -a ""'
alias ekill='emacsclient -e "(kill-emacs)"'
alias vim='emacs'
alias bex="bundle exec"
export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
