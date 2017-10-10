# 直前の重複履歴を保存しない
setopt hist_ignore_dups
# 重複履歴を残さない
setopt hist_ignore_all_dups
# 先頭がスペースの場合履歴に残さない
setopt hist_ignore_space
# 履歴から余計なスペースを削除
setopt hist_reduce_blanks
# 古い履歴を新しい履歴で置き換える
setopt hist_save_no_dups

# 履歴をシェアする
setopt share_history

# pushdで重複を無視
setopt pushd_ignore_dups
# directoryなら/を入れる
setopt auto_param_slash
# ビープ音を鳴らさない
setopt no_beep
