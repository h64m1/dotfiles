#_______________________________________________________________________________
# avoid duplicated path
typeset -U -gx path
path=(/usr/local/bin(N-/) $path)

#_______________________________________________________________________________
# /etc/zprofile,
# /etc/zshrc,
# /etc/zlogin and
# /etc/zlogout will not be run.
unsetopt global_rcs

#_______________________________________________________________________________
# coreutils
# M1 mac
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

#_______________________________________________________________________________
# golang
export GOPATH=$HOME/go
export PATH=/usr/local/go/bin:$GOPATH/bin:$PATH

#_______________________________________________________________________________
# python
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH

#_______________________________________________________________________________
# node
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

#_______________________________________________________________________________
# swift
# SWIFT_BIN=/Library/Developer/Toolchains/swift-latest/usr/bin
# SWIFT_BIN=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
# export PATH=${SWIFT_BIN}:${PATH}
#export PRETTIER_SWIFT_SWIFTC=${SWIFT_BIN}/swiftc

#_______________________________________________________________________________
# Load pyenv automatically by appending the following to your profile:
# if type pyenv 1> /dev/null 2>&1; then
#   eval "$(pyenv init -)"
# fi

#_______________________________________________________________________________
# editor
export EDITOR=nvim

#_______________________________________________________________________________
# xcode
if (( $+commands[xcrun] )); then
  export SDKROOT=`xcrun --sdk macosx --show-sdk-path`
fi

#_______________________________________________________________________________
# history
export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

#_______________________________________________________________________________
# fzf settings
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border'

#_______________________________________________________________________________
# git completion
COMPLETION_DIR=$HOME/.zsh/completion
if [ ! -d $COMPLETION_DIR ]; then
  mkdir -pv $COMPLETION_DIR
fi

if [ ! -f $COMPLETION_DIR/git-completion.bash ]; then
  curl -o $COMPLETION_DIR/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash 

fi

if [ ! -f $COMPLETION_DIR/git-completion.zsh ]; then
  curl -o $COMPLETION_DIR/git-completion.zsh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh 
fi

if [ ! -f $COMPLETION_DIR/git-prompt.sh ]; then
  curl -o $COMPLETION_DIR/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi


#_______________________________________________________________________________
# cargo
. "$HOME/.cargo/env"
