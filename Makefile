# 除外するdotfiles
EXCLUDES := .DS_Store .git
# directory (. と..)を除くdotfiles
TARGET   := $(wildcard .??*)
# 不要なdotfilesを除外
DOTFILES := $(filter-out $(EXCLUDES), $(TARGET))

.PHONY: deploy
deploy:
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

init:
	/bin/zsh
