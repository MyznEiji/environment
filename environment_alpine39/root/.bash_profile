# neovim
export XDG_CONFIG_HOME="$HOME/.config"

# git

# スクリプト読み込み
source $HOME/.config/.git/.git-completion.bash
source $HOME/.config/.git/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
############### ターミナルのコマンド受付状態の表示変更
# \u ユーザ名
# \h ホスト名
# \W カレントディレクトリ
# \w カレントディレクトリのパス
# \n 改行
# \d 日付
# \[ 表示させない文字列の開始
# \] 表示させない文字列の終了
# \$ $
export PS1='\n\n■ \[\e[0;31m\]\u(docker-env)\[\e[0;0m\] \[\e[0;35m\]\w\[\e[0;0m\] \t \[\033[00m\]\[\033[31m\]$(__git_ps1 %s)\[\033[00m\]\n\[\e[0;36m\]\$\[\e[0;0m\] '

##############

# add pass for user/bin
export PATH=$PATH:~/bin/
