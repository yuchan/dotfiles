if [[ `uname` == 'Darwin' ]]; then
    export EDITOR="/usr/bin/vim"
    export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$HOME/local/bin:$PATH
    export PATH=$HOME/bin:$PATH
    export GOPATH=/usr/local/go/bin
    ### Added by the Heroku Toolbelt
    export PATH="/usr/local/heroku/bin:$PATH"
    export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
    alias brew-upgrade-outdated="brew update && brew outdated | awk '{print $1}' | xargs brew upgrade"
    export PATH=/usr/texbin:$PATH

    # added by travis gem
    [ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

    export DOCKER_HOST=tcp://192.168.59.103:2376
    export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
    export DOCKER_TLS_VERIFY=1
elif [[ `uname` == 'Linux' ]]; then
    alias composer="hhvm -v ResourceLimit.SocketDefaultTimeout=30 -v Http.SlowQueryThreshold=30000 /usr/local/bin/composer"
fi

if [[ -f ~/.bash_secret ]]; then
    . ~/.bash_secret
fi

alias bex="bundle exec"
alias emacs="emacsclient -nw --a ''"
alias killmacs="emacsclient -e '(kill-emacs)'"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
