#_______________________________________________________________________________
# function
function history-fzf() {
  BUFFER=$(history -r -n 1 | fzf --exact --no-sort --reverse --border --ansi --multi --exit-0 --select-1 --query="$LBUFFER")
  CURSOR=$#BUFFER
  zle reset-prompt
}
zle -N history-fzf
bindkey '^r' history-fzf
