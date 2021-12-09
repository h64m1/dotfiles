#_______________________________________________________________________________
# alias
alias ls="ls -CF --color=auto"
alias ll='ls -lrta'
alias mkdir="mkdir -p"
alias pd="pushd ; dirs -v "
alias po="popd ; dirs -v"
alias chrome_local="open -a Google\ Chrome --args -allow-file-access-from-files"
alias vim='nvim'

# git
alias git_rm_remote_branch="git push orign :[remote branch name]"
alias git_sync_branch="git remote prune origin"

# zenn
alias zenn_cli_preview="npx zenn preview"

# sdkroot
alias sdkroot="xcrun --sdk macosx --show-sdk-path"

# copy prettier configuration file to current directory
copy-prettierrc() {
  cp -v $HOME/.prettierrc .
  echo "prettier configuration ..."
  cat .prettierrc
}

