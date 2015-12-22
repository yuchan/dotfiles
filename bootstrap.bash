#! /usr/bin/env bash

git submodule init
git submodule update

for dotfile in $(find . -maxdepth 1 \( -iname '.*' -not -iname '.git*' -not -iname '.' \)); do
    rm -rf ${HOME}/${dotfile} || continue
    ln -s ${PWD}/${dotfile} ${HOME}/${dotfile}
done

if which z >/dev/null; then
    echo 'z is already installed.'
else
    brew install z
fi

currentdir=$PWD

cd $currentdir/powerline-shell && cp config.py.dist config.py && ./install.py
cd $currentdir/fonts && ./install.sh
cd $currentdir
