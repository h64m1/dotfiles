# Makefileの関数
# https://qiita.com/chibi929/items/b8c5f36434d5d3fbfa4a
# $(filter PATTERN...,TEXT)
#   TEXT内からPATTERNの文字列に一致する要素を取得
# $(filter-out PATTERN...,TEXT)
#   TEXT内からPATTERNの文字列に一致しない要素を取得 (filterの逆)

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
