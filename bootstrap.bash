#! /usr/bin/env bash

git submodule init
git submodule update

for dotfile in $(find . -maxdepth 1 \( -iname '.*' -not -iname '.git*' -not -iname '.' \)); do
    rm -rf ${HOME}/${dotfile} || continue
    ln -s ${PWD}/${dotfile} ${HOME}/${dotfile}
done

sh laptop/mac 2>&1 | tee ~/laptop.log

if which z >/dev/null; then
    echo 'z is already installed.'
else
    brew install z
fi


