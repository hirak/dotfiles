# .bashrc
# @Author: hinakano

export EDITOR=vim
#export LSCOLORS=ExFxCxdxBxegedabagacad #黒背景専用になってしまうのでボツ
export NODE_PATH=/usr/local/lib/node_modules/
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

CR="$(echo -ne '\r')"
LF="$(echo -ne '\n')"
TAB="$(echo -ne '\t')"
ESC="$(echo -ne '\033')"
COLOUR_BLACK="${ESC}[30m"
COLOUR_RED="${ESC}[31m"
COLOUR_GREEN="${ESC}[32m"
COLOUR_YELLOW="${ESC}[33m"
COLOUR_BLUE="${ESC}[34m"
COLOUR_CYAN="${ESC}[35m"
COLOUR_MAGENTA="${ESC}[36m"
COLOUR_WHITE="${ESC}[37m"
COLOUR_HIGHLIGHT_BLACK="${ESC}[30;1m"
COLOUR_HIGHLIGHT_RED="${ESC}[31;1m"
COLOUR_HIGHLIGHT_GREEN="${ESC}[32;1m"
COLOUR_HIGHLIGHT_YELLOW="${ESC}[33;1m"
COLOUR_HIGHLIGHT_BLUE="${ESC}[34;1m"
COLOUR_HIGHLIGHT_CYAN="${ESC}[35;1m"
COLOUR_HIGHLIGHT_MAGENTA="${ESC}[36;1m"
COLOUR_HIGHLIGHT_WHITE="${ESC}[37;1m"
COLOUR_DEFAULT="${ESC}[m"

pscolor=$COLOUR_HIGHLIGHT_BLUE
HOST=`hostname`

PS1="\ek\e\134\[${pscolor}\][\u@$HOST:\w]\n\[${COLOUR_DEFAULT}\]\$ "
export CVS_RSH=ssh
export CVSEDITOR=vim

#### 補完
# host名補完の候補ファイル
export HOSTFILE="$HOME/.host_completion"
complete -A hostname ssh
complete -A command {man,which}

alias ls='ls --color'
alias ll='ls -la'
alias dirs='dirs -v'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias sr='screen -x -U'
#alias gccjs='java -jar ~/lib/gcc/compiler.jar'
#alias yuicompressor='java -jar ~/bin/yuicompressor-2.4.6/build/yuicompressor-2.4.6.jar'

alias view='vim - -R'

changecaption()
{
    echo $1
    echo -n -e "\e]2;$1\a"
}
#履歴共有設定
function share_hitory {
    history -a
    history -c
    history -r
    echo $PWD >> ~/.cdhistory
    tail -2000 ~/.cdhistory | sort | uniq -c | sort -n | tail | sed 's/^ *[0-9]* *//' > ~/.cdranking
}
PROMPT_COMMAND='share_hitory'
shopt -u histappend
export HISTSIZE=10000
export HISTFILE="$HOME/.bash_history"
export HISTCONTROL='ignoreboth'

rd()
{
    if [ -n "$1" ]
    then
        pushd $(tail -$1 ~/.cdranking | head -1)
    else
        length=$(wc -l ~/.cdranking)
        tail ~/.cdranking | perl -pe 'BEGIN{$i=10} s/\/home\/hiraku/~/;$_=$i--."\t".$_'
    fi
}

#履歴整理コマンド 重くなってきたら使う
function sweep_history {
    cat ~/.bash_history|sort|uniq > ~/.bash_history.tmp
    mv ~/.bash_history.tmp ~/.bash_history
}
return
