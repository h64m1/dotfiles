#_______________________________________________________________________________
# downloads git-completion.zsh
# curl -o ~/.zsh/completion --create-dirs -O https://raw.github.com/git/git/master/contrib/completion/git-completion.zsh
: "Multi-user Hack" && {
    compaudit > /dev/null 2>&1 || {
        echo "Need to change file ownership of zsh completion"
        sudo -v || exit
        compaudit 2>/dev/null | sudo xargs chown $(whoami)
    }
}

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
if (( $+commands[gh] )); then
  echo "gh is available"
  eval "$(gh completion -s zsh)"
fi

