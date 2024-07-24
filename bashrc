# .bashrc
# vim: set ft=sh:
# @author Hiraku Nakano <hiraku@tojiru.net>

export EDITOR=vim
export GOPATH=$HOME
export MINI_USER=hiraku
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

source ~/.git-completion.bash
source ~/.git-prompt.sh

echo -n 'git config --get user.email: ' >&2
git config --get user.email >&2

kube_prompt() {
    echo $(cat ~/.kube/config | grep "    namespace:" | awk '{print $2}')
}

CR="$(echo -ne '\r')"
LF="$(echo -ne '\n')"
TAB="$(echo -ne '\t')"
ESC="$(echo -ne '\033')"
COLOUR_BLACK="${ESC}[30m"
COLOUR_RED="${ESC}[31m"
COLOUR_GREEN="${ESC}[32m"
COLOUR_YELLOW="${ESC}[33m"
COLOUR_BLUE="${ESC}[34m"
COLOUR_MAGENTA="${ESC}[35m"
COLOUR_CYAN="${ESC}[36m"
COLOUR_WHITE="${ESC}[37m"
COLOUR_HIGHLIGHT_BLACK="${ESC}[30;1m"
COLOUR_HIGHLIGHT_RED="${ESC}[31;1m"
COLOUR_HIGHLIGHT_GREEN="${ESC}[32;1m"
COLOUR_HIGHLIGHT_YELLOW="${ESC}[33;1m"
COLOUR_HIGHLIGHT_BLUE="${ESC}[34;1m"
COLOUR_HIGHLIGHT_MAGENTA="${ESC}[35;1m"
COLOUR_HIGHLIGHT_CYAN="${ESC}[36;1m"
COLOUR_HIGHLIGHT_WHITE="${ESC}[37;1m"
COLOUR_DEFAULT="${ESC}[m"

pscolor=$COLOUR_HIGHLIGHT_BLUE
HOST=`hostname`
kube_prompt() {
  KUBECONFIG=~/.kube/config
  kube_namespace=$(cat $KUBECONFIG | grep "    namespace:" | awk '{print $2}')
  echo $kube_namespace
}

export PS1="\ek\e\134\[${pscolor}\][\u@$HOST:\w]\[${COLOUR_HIGHLIGHT_YELLOW}\]\$(__git_ps1) \$(kube_prompt)\n\[${COLOUR_DEFAULT}\]\$ "
export CVS_RSH=ssh
export CVSEDITOR=vim

#### 補完
# host名補完の候補ファイル
export HOSTFILE="$HOME/.host_completion"
complete -A hostname ssh
complete -A command {man,which}

if [ `uname -s` = 'Linux' ]; then
    alias ls='ls --color'
else
    alias ls='ls -G'
fi

ghs()
{
    local target=$(ghq list -p $1 | peco)
    if [[ "$target" != "" ]]; then
        cd "$target"
    fi
}
alias ll='ls -la'
alias dirs='dirs -v'
alias c=composer
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias sr='screen -x -U'
alias readlog="jq '{time: (.time + 9*60*60 | strftime(\"%F %XJST\")), level, message}'"

changecaption()
{
    echo $1
    echo -n -e "\e]2;$1\a"
}
#履歴共有設定
share_hitory() {
    history -a
    history -c
    history -r
    echo $PWD >> ~/.cdhistory
    tail -2000 ~/.cdhistory | sort | uniq -c | sort -n | tail | sed 's/^ *[0-9]* *//' > ~/.cdranking
}
PROMPT_COMMAND='share_hitory'
shopt -u histappend
export HISTSIZE=100000
export HISTFILE="$HOME/.bash_history"
export HISTCONTROL='ignoreboth'

rd()
{
    if [ -n "$1" ]
    then
        pushd $(tail -$1 ~/.cdranking | head -1)
    else
        length=$(wc -l ~/.cdranking)
        tail ~/.cdranking | perl -pe 'BEGIN{$i=10} s/$HOME/~/;$_=$i--."\t".$_'
    fi
}

#履歴整理コマンド 重くなってきたら使う
sweep_history() {
    cat ~/.bash_history|sort|uniq > ~/.bash_history.tmp && mv ~/.bash_history.tmp ~/.bash_history
}

if [ -d ~/.bashrc.d ]; then
    for i in ~/.bashrc.d/*.sh ; do
        source $i
    done
fi

if [ -f ~/.bashrc_extra ]; then
    source ~/.bashrc_extra
fi

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

light() {
    if [ -z "$2" ]; then
        src="pbpaste"
    else
        src="cat $2"
    fi

    $src | highlight -O rtf --syntax $1 --font="Migu 1M" --style=breeze --font-size 24 | pbcopy
}
