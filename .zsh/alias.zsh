#_______________________________________________________________________________
# alias
alias ls="ls -CF --color=auto"
alias ll='ls -lrta'
alias mkdir="mkdir -p"
alias pd="pushd ; dirs -v "
alias po="popd ; dirs -v"
alias chrome_local="open -a Google\ Chrome --args -allow-file-access-from-files"

# git
alias git_rm_remote_branch="git push orign :[remote branch name]"
alias git_sync_branch="git remote prune origin"

# copy prettier configuration file to current directory
copy-prettierrc() {
  cp -v $HOME/.prettierrc .
  echo "prettier configuration ..."
  cat .prettierrc
}

