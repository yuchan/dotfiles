#! /usr/bin/env bash

git submodule init
git submodule update

for dotfile in $(find . -maxdepth 1 \( -iname '.*' -not -iname '.git*' -not -iname '.' \)); do
    rm -rf ${HOME}/${dotfile} || continue
    ln -s ${PWD}/${dotfile} ${HOME}/${dotfile}
done

if [[ `uname` == 'Darwin' ]]; then
    sh laptop/mac 2>&1 | tee ~/laptop.log
fi

npm install --global pure-prompt

if [ ! -L $HOME/.oh-my-zsh ]
then
    ln -s ${PWD}/oh-my-zsh $HOME/.oh-my-zsh
fi

source ~/.zshrc
