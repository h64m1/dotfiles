#_______________________________________________________________________________
# Load zsh files
for file in "color" "completion" "bindkey" "function" "autoload" "setopt" "zstyle" "prompt" "alias"
do
  zshfile=~/.zsh/${file}.zsh
  echo "source ${zshfile}"
  source ${zshfile}
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
