#! /usr/bin/env bash

git submodule init
git submodule update

for dotfile in $(find . -maxdepth 1 \( -iname '.*' -not -iname '.git*' -not -iname '.' \)); do
    rm -rf ${HOME}/${dotfile} || continue
    ln -s ${PWD}/${dotfile} ${HOME}/${dotfile}
done

hash atom 2>/dev/null || { echo >&2 "atom is not installed."; }
hash apm 2>/dev/null || { echo >&2 "apm is not installed."; }

if hash apm 2>/dev/null; then
  apm install --packages-file my-packages.txt
fi
