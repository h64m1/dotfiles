#_______________________________________________________________________________
# prompt

# to show git branch in prompt
#if [ -f ${HOME}/.zsh/git-completion.zsh ]; then
#        zstyle ':completion:*:*:git:*' script ~/.zsh/completion/git-completion.zsh
#fi

if [ -f ${HOME}/.zsh/git-prompt.sh ]; then
        source ${HOME}/.zsh/git-prompt.sh
fi

setopt PROMPT_SUBST

#setopt PROMPT_SUBST
#PS1='[%n@%F{blue}%~%f %t%F{green}$(__git_ps1 " (%s)")]%f \$ '
#PROMPT_COMMAND="__git_ps1 '\u@\h \w' '\\\$ '; $PROMPT_COMMAND"
#PROMPT='%n@%~ (__git_ps1) $ '
precmd() { __git_ps1 "%n@%F{blue}%~%f " " $ " "| %s"}

# In addition, if you set GIT_PS1_SHOWDIRTYSTATE to a nonempty value,
# unstaged (*) and staged (+) changes will be shown next to the branch
# name.  You can configure this per-repository with the
# bash.showDirtyState variable, which defaults to true once
# GIT_PS1_SHOWDIRTYSTATE is enabled.
GIT_PS1_SHOWDIRTYSTATE=true

# If you would like to see if there're untracked files, then you can set
# GIT_PS1_SHOWUNTRACKEDFILES to a nonempty value. If there're untracked
# files, then a '%' will be shown next to the branch name.  You can
# configure this per-repository with the bash.showUntrackedFiles
# variable, which defaults to true once GIT_PS1_SHOWUNTRACKEDFILES is
# enabled.
GIT_PS1_SHOWUNTRACKEDFILES=true

# You can also see if currently something is stashed, by setting
# GIT_PS1_SHOWSTASHSTATE to a nonempty value. If something is stashed,
# then a '$' will be shown next to the branch name.
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# If you would like a colored hint about the current dirty state, set
# GIT_PS1_SHOWCOLORHINTS to a nonempty value. The colors are based on
# the colored output of "git status -sb" and are available only when
# using __git_ps1 for PROMPT_COMMAND or precmd.
GIT_PS1_SHOWCOLORHINTS=true

