#!/bin/bash

brew update && brew outdated | awk '{print $1}' | xargs brew upgrade

brew install ant
brew install autoconf
brew install automake
brew install autossh
brew install brew-cask
brew install clisp
brew install emacs
brew install flawfinder
brew install fontconfig
brew install freetype
brew install ghostscript
brew install gradle
brew install hub
brew install imagemagick
brew install jbig2dec
brew install jpeg
brew install libpng
brew install libsigsegv
brew install libtiff
brew install libtool
brew install little-cms2
brew install markdown
brew install maven
brew install mercurial
brew install mono
brew install mplayer
brew install openssl
brew install pkg-config
brew install rats
brew install readline
brew install sbt
brew install scala
brew install splint
brew install tree
brew install typesafe-activator
brew install uncrustify
brew install valgrind
brew install xctool
brew install xz
brew install yasm


