#_______________________________________________________________________________
# deno completion設定
if (( $+commands[deno] )); then
  if [ ! -f $HOME/.zsh/_deno ]; then
    echo "deno is available. Create completion file: ~/.zsh/_deno"
    deno completions zsh > $HOME/.zsh/_deno
  fi
fi

