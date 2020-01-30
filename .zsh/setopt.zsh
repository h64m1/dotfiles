# ディレクトリ移動
setopt   autocd            # ディレクトリ名だけでcd (default OFF)
unsetopt auto_pushd        # 自動的にdirectoryをstackしない (default OFF)
unsetopt cdablevars        # cdのargumentをdirectory名として展開 (default OFF)
unsetopt chase_dots        # chase_linksで上書きされるのでいらない
setopt   chase_links       # symbolic linkを実際の値に展開
unsetopt posix_cd          # posix準拠のcdになる
setopt   pushd_ignore_dups # stackの重複を防ぐ
unsetopt pushd_minus       # +と-の意味を反転
unsetopt pushd_silent      # pushd/popdのdirectory stackは非表示
unsetopt pushd_to_home     # pushd = `pushd $HOME`になる

# 補完
setopt   always_lastprompt # 補完時にプロンプトの位置を変えない? (default ON)
setopt   always_to_end     # 補完時にカーソルを単語の最後に移動 (default OFF)
setopt   auto_list         # 曖昧補完をリストで表示 (default ON)
setopt   auto_menu         # 補完後タブで候補を切り替え (menu_completeでオプションを切り替え) (default ON)
unsetopt autonamedirs      # 環境変数としてセットしたディレクトリが、環境変数名でプロンプトに表示（%~） (default OFF)
setopt   autoparamkeys     # パラメータ名補完時に余分な記号(,やスペースなど)を削除する (default ON)
setopt   autoparamslash    # ディレクトリ名補完時、末尾にスラッシュを追加する (default ON)
setopt   autoremoveslash   # 補完末尾がスラッシュで、デリミタ（/, :など）を入力した場合スラッシュを消す (default ON)
unsetopt bashautolist      # タブ2回で曖昧補完リストを表示 (AUTI_LISTより優先、LIST_AMBIGUOUSオプションは有効) (default OFF)
setopt   completealiases   # エイリアスのコマンドでも補完を機能させる (default OFF)
setopt   completeinword    # 単語の先頭と末尾を正しく入力した場合、カーソルを中間に持っていって補完出来る (default OFF)
setopt   globcomplete      # コマンド補完時にグロブ展開せずに、候補をサイクルして表示 (default OFF)
setopt   hashlistall       # コマンド全体を最初にハッシュしておく (default ON)
setopt   listambiguous     # コマンド補完候補がユニークな場合はリスト表示せず補完 (default ON)
unsetopt listbeep          # 曖昧補完時にビープ音 (default ON)
setopt   listpacked        # 補完候補を詰めて表示 (default OFF)
unsetopt listrowsfirst     # 補完候補リストを横方向に表示、通常は縦方向 (default OFF)
setopt   listtypes         # 補完時にファイルタイプも表示 (ls -Fのような感じ) (default ON)
unsetopt menucomplete      # 補完候補の1番目が自動的にコマンドラインに挿入される (default OFF)

# 展開、グロブ
setopt badpattern          # Filename Generationが失敗した時にエラーメッセージを出す (default ON)
setopt bareglobqual        # 末尾のカッコをglob qualifierとしてfilename generationに使用する (default ON)
setopt braceccl            # Brace expansionで展開されない文字列に関しても{}の中の文字列を展開 (default OFF)
setopt caseglob            # Filename generationでグロブする時に小文字と大文字を区別 (default ON)
setopt casematch           # 正規表現がcase sensitive (小文字と大文字を区別) になる
setopt cshnullglob         # Filename generationでパターンにマッチしない場合、エラーでそれを表示しない (default OFF)
setopt equals              # =コマンド名 -> whichコマンド名と同じ (default ON)
setopt extended_glob       # 

# 履歴
setopt hist_ignore_dups     # 直前の重複履歴を保存しない
setopt hist_ignore_all_dups # 重複履歴を残さない
setopt hist_ignore_space    # 先頭がスペースの場合履歴に残さない
setopt hist_reduce_blanks   # 履歴から余計なスペースを削除
setopt hist_save_no_dups    # 古い履歴を新しい履歴で置き換える


# history
setopt appendhistory # 履歴をファイルに残す (default ON)
setopt bang_hist     # !を使って履歴を展開 (default ON)

setopt share_history # 履歴をシェアする

# ビープ音を鳴らさない
setopt no_beep

# 初期化
unsetopt allexport # 定義した変数は全てexport (default OFF)
 
# 入出力
setopt aliases # aliasを展開 (default ON)

# Job control
setopt autocontinue # Ctrl+z -> disownでjobをkillする (default OFF)
setopt autoresume   # サスペンド中のジョブ名で、そのジョブを再実行(default OFF)

# Shell Enumelation
setopt appendcreate # append redirection (>>)でも新規作成可能にする
# bashrematch       # (default OFF)

# nobeep                on
# nobgnice              off
# braceccl              off
# bsdecho               off
# nocaseglob            off
# nocasematch           off
# cbases                off
# cdablevars            off
# chasedots             off
# chaselinks            off
# nocheckjobs           off
# noclobber             off
# combiningchars        off
# completeinword        off
# continueonerror       off
# correct               off
# correctall            off
# cprecedences          off
# cshjunkiehistory      off
# cshjunkieloops        off
# cshjunkiequotes       off
# cshnullcmd            off
# cshnullglob           off
# nodebugbeforecmd      off
# dvorak                off
# emacs                 off
# noequals              off
# errexit               off
# errreturn             off
# noevallineno          off
# noexec                off
# extendedglob          off
# extendedhistory       off
# noflowcontrol         off
# forcefloat            off
# nofunctionargzero     off
# noglob                off
# noglobalexport        off
# noglobalrcs           on
# globassign            off
# globcomplete          off
# globdots              off
# globstarshort         off
# globsubst             off
# nohashcmds            off
# nohashdirs            off
# hashexecutablesonly   off
# nohashlistall         off
# histallowclobber      off
# nohistbeep            off
# histexpiredupsfirst   off
# histfcntllock         off
# histfindnodups        off
# histignorealldups     on
# histignoredups        on
# histignorespace       on
# histlexwords          off
# histnofunctions       off
# histnostore           off
# histreduceblanks      on
# nohistsavebycopy      off
# histsavenodups        on
# histsubstpattern      off
# histverify            off
# nohup                 off
# ignorebraces          off
# ignoreclosebraces     off
# ignoreeof             off
# incappendhistory      off
# incappendhistorytime  off
# interactive           on
# interactivecomments   off
# ksharrays             off
# kshautoload           off
# kshglob               off
# kshoptionprint        off
# kshtypeset            off
# kshzerosubscript      off
# nolistambiguous       off
# nolistbeep            off
# listpacked            off
# listrowsfirst         off
# nolisttypes           off
# localloops            off
# localoptions          off
# localpatterns         off
# localtraps            off
# login                 off
# longlistjobs          off
# magicequalsubst       off
# mailwarning           off
# markdirs              off
# menucomplete          off
# monitor               on
# nomultibyte           off
# nomultifuncdef        off
# nomultios             off
# nonomatch             off
# nonotify              off
# nullglob              off
# numericglobsort       off
# octalzeroes           off
# overstrike            off
# pathdirs              off
# pathscript            off
# pipefail              off
# posixaliases          off
# posixargzero          off
# posixbuiltins         off
# posixcd               off
# posixidentifiers      off
# posixjobs             off
# posixstrings          off
# posixtraps            off
# printeightbit         off
# printexitvalue        off
# privileged            off
# promptbang            off
# nopromptcr            off
# nopromptpercent       off
# nopromptsp            off
# promptsubst           off
# pushdignoredups       on
# pushdminus            off
# pushdsilent           off
# pushdtohome           off
# rcexpandparam         off
# rcquotes              off
# norcs                 off
# recexact              off
# rematchpcre           off
# restricted            off
# rmstarsilent          off
# rmstarwait            off
# sharehistory          on
# shfileexpansion       off
# shglob                off
# shinstdin             on
# shnullcmd             off
# shoptionletters       off
# noshortloops          off
# shwordsplit           off
# singlecommand         off
# singlelinezle         off
# sourcetrace           off
# sunkeyboardhack       off
# transientrprompt      off
# trapsasync            off
# typesetsilent         off
# nounset               off
# verbose               off
# vi                    off
# warncreateglobal      off
# xtrace                off
# zle                   on
