#_______________________________________________________________________________
# function autoload
# git completion path
fpath=(~/.zsh/completion $fpath)

# auto completion
autoload -Uz compinit
compinit

# Use colors
autoload -Uz colors
colors
