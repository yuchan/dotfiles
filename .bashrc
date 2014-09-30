if [ `uname` == 'Darwin' ]; then
    export EDITOR="/usr/bin/vim"
    export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/yusuke/local/bin:$PATH
    export PATH=$HOME/bin:$HOME/local/bin:$HOME/local/*/bin:$PATH
    export GOPATH=/usr/local/go/bin
    ### Added by the Heroku Toolbelt
    export PATH="/usr/local/heroku/bin:$PATH"
    export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
    alias brew-upgrade-outdated="brew update && brew outdated | awk '{print $1}' | xargs brew upgrade"
    export PATH=/usr/texbin:$PATH

    # Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
    export COCOS_CONSOLE_ROOT=/Users/Yusuke/Documents/cocos2d-js-v3.0/tools/cocos2d-console/bin
    export PATH=$COCOS_CONSOLE_ROOT:$PATH

    # Add environment variable NDK_ROOT for cocos2d-x
    export NDK_ROOT=/Users/Yusuke/Documents/android-ndk
    export PATH=$NDK_ROOT:$PATH

    # Add environment variable ANDROID_SDK_ROOT for cocos2d-x
    export ANDROID_SDK_ROOT=/Users/Yusuke/Documents/android-sdk
    export PATH=$ANDROID_SDK_ROOT:$PATH
    export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

    # Add environment variable ANT_ROOT for cocos2d-x
    export ANT_ROOT=/usr/local/bin
    export PATH=$ANT_ROOT:$PATH
    # added by travis gem
    [ -f /Users/yusuke/.travis/travis.sh ] && source /Users/yusuke/.travis/travis.sh
elif [ `uname` == 'Linux' ]; then
    alias composer="hhvm -v ResourceLimit.SocketDefaultTimeout=30 -v Http.SlowQueryThreshold=30000 /usr/local/bin/composer"
fi

if [ -f ~/.bash_secret ]; then
    . ~/.bash_secret
fi
