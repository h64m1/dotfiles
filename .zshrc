#_______________________________________________________________________________
# Load zsh files
for file in "color" "completion" "bindkey" "function" "autoload" "setopt" "zstyle" "prompt" "alias"
do
  zshfile=~/.zsh/${file}.zsh
  echo "source ${zshfile}"
  source ${zshfile}
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f ~/.zsh/completion/git-prompt.sh ] && source ~/.zsh/completion/git-prompt.sh

[ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
