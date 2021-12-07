#_______________________________________________________________________________
# Macでマルチユーザの場合の設定
# 参考: https://qiita.com/suin/items/7b49abadc387801e8d6f
# case ${OSTYPE} in
#   darwin*)
#     echo "OS: Mac"
#     : "Multi-user Hack" && {
#       compaudit > /dev/null 2>&1 || {
#         echo "Need to change file ownership of zsh completion"
#         sudo -v || exit
#         compaudit 2>/dev/null | sudo xargs chown $(whoami)
#       }
#     }
#     ;;
#   linux*)
#     echo "OS: Linux"
#     ;;
# esac

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

