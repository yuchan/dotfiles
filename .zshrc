# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=""

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rbenv ruby rails iterm2 pyenv tig)

# User configuration
if [ -f ~/.zshrc.local ] ; then
	. ~/.zshrc.local
fi

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

autoload -U promptinit; promptinit
prompt pure

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"

export PATH="$HOME/.bin:$PATH"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

umask 022
ulimit -c 0 
export LANG=ja_JP.UTF-8 export LC_CTYPE=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8
export PAGER=less
# lsのカラー化
# LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35'
# export LS_COLORS
# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=cxfxexdxbxegedabagacad
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'
alias ls='ls -FG'
alias grep='grep --color=auto'
alias ghis='for branch in `git branch -r | grep -v HEAD | grep -v develop`;do echo -e `git show --format="%ci %cr" $branch | head -n 1` \\t$branch; done | sort -r'

if [[ `uname` == 'Darwin' ]]; then
    export EDITOR=vim
    alias brew-upgrade-outdated="brew update && brew outdated | awk '{print $1}' | xargs brew upgrade"    
    GOVERSION=$(brew list go | head -n 1 | cut -d '/' -f 6)
    export GOROOT=$(brew --prefix)/Cellar/go/$GOVERSION/libexec
    export GOPATH=$HOME/src/go
    export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:$GOPATH/bin:$PATH
    . `brew --prefix`/etc/profile.d/z.sh
    export JAVA_HOME="$(/usr/libexec/java_home)"
    export PATH=${JAVA_HOME}/bin:$PATH 
elif [[ `uname` == 'Linux' ]]; then
    alias composer="hhvm -v ResourceLimit.SocketDefaultTimeout=30 -v Http.SlowQueryThreshold=30000 /usr/local/bin/composer"
fi