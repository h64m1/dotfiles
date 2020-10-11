#_______________________________________________________________________________
# downloads git-completion.zsh
# curl -o ~/.zsh/completion --create-dirs -O https://raw.github.com/git/git/master/contrib/completion/git-completion.zsh

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

#_______________________________________________________________________________
# GitHub CLIのコマンド補完
eval "$(gh completion -s zsh)"

