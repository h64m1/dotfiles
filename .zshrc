#_______________________________________________________________________________
# Load zsh files
for file in "color" "completion" "bindkey" "function" "autoload" "setopt" "zstyle" "alias"
do
  zshfile=~/.zsh/${file}.zsh
  echo "source ${zshfile}"
  source ${zshfile}
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f ~/.zsh/completion/git-prompt.sh ] && source ~/.zsh/completion/git-prompt.sh

[ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"

# local settings
[ -f ~/.zsh/zshrc.local ] && source ~/.zsh/zshrc.local
