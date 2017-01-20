if [ -f ~/.bashrc ] ; then
    . ~/.bashrc
fi

export PROMPT="%m:%n%% "
export RPROMPT="[%~]"
export SPROMPT="correct: %R -> %r ? "
export PS1='[\h]\w $ '

