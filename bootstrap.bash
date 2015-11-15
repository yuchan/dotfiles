#! /usr/bin/env bash

git submodule init
git submodule update

for dotfile in $(find . -maxdepth 1 \( -iname '.*' -not -iname '.git*' -not -iname '.' \)); do
    rm -rf ${HOME}/${dotfile} || continue
    ln -s ${PWD}/${dotfile} ${HOME}/${dotfile}
done
