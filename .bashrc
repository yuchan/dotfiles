if [ `uname` == 'Darwin' ]; then
    export EDITOR="/usr/bin/vim"
    export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/yusuke/local/bin:$PATH
    export PATH=$HOME/bin:$HOME/local/bin:$HOME/local/*/bin:$PATH
    export GOPATH=/usr/local/go/bin
    ### Added by the Heroku Toolbelt
    export PATH="/usr/local/heroku/bin:$PATH"
elif [ `uname` == 'Linux' ]; then
    alias composer="hhvm -v ResourceLimit.SocketDefaultTimeout=30 -v Http.SlowQueryThreshold=30000 /usr/local/bin/composer"
fi

if [ -f ~/.bash_secret ]; then
    . ~/.bash_secret
fi
