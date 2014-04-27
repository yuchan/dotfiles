if [ `uname` == 'Darwin' ]; then
    export EDITOR="/usr/bin/vim"
    export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/yusuke/local/bin
    export PATH=$HOME/bin:$HOME/local/bin:$HOME/local/*/bin:$PATH
    export GOPATH=/usr/local/go/bin
    ### Added by the Heroku Toolbelt
    export PATH="/usr/local/heroku/bin:$PATH"
fi
