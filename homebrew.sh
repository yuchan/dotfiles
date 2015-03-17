#!/bin/bash

brew update && brew outdated | awk '{print $1}' | xargs brew upgrade

brew install ant autoconf automake autossh brew-cask clisp emacs flawfinder fontconfig freetype ghostscript gradle hub imagemagick jbig2dec jpeg  libpng  libsigsegv  libtiff  libtool  little-cms2  markdown  maven  mercurial  mono  mplayer  openssl  pkg-config  rats  readline  sbt  scala  splint  tree  typesafe-activator  uncrustify  valgrind  xctool  xz  yasm   