#perldoc 文字化け対策
export LESS=mqeisz-2XR
# isearch
stty stop undef

# file
umask 022
ulimit -c 0
# character code utf-8
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# default editor
export EDITOR=emacsclient

# pager
export PAGER=less

# history
function share_history {
    history -a
    history -c
    history -r
}

# autojump
function autojump {
    _z --add "$(pwd -P)"
}
export _Z_CMD=j
export TERM=xterm-256color

# hook after command
PROMPT_COMMAND='share_history && autojump'
shopt -u histappend
export HISTSIZE=9999
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE="ls:ls *:ll:ll *:cd:cd -:pwd"



# android
[[ -d $HOME/Library/android-sdk-macosx/tools ]] && PATH=$HOME/Library/android-sdk-macosx/tools:$PATH

# PATH
#export PATH=./local/bin:./bin:/usr/local/sbin:/usr/local/bin:~/local/bin:$PATH
export PATH=~/.cask/bin:./bin:/usr/local/sbin:/usr/local/bin:~/local/bin:$PATH


# bash completion
[[ -f /usr/local/etc/bash_completion ]] && . /usr/local/etc/bash_completion

# rbenv
[[ -d "$HOME/.rbenv" ]] && eval "$(rbenv init -);" && export export PATH=$HOME/.rbenv/bin:$PATH

# plenv
[[ -d "$HOME/.plenv" ]] && eval "$(plenv init -);" && export export PATH=$HOME/.plenv/bin:$PATH


# prompt
. $HOME/.bash_prompt

 [[ -f ~/.nodebrew/nodebrew ]] &&     export PATH=$HOME/.nodebrew/current/bin:$PATH

# mysql prompt
MYSQL_PS1='\u@\h[\d]> '

# global alias
#alias mysql="mysql --pager='less -S'"
alias ls="ls -GAF"
alias ll="ls -l"
if [ $(uname) = "Linux" ]; then
    alias ls="ls --color=auto -AF"
fi
alias vi="vim"
alias cp="cp -i"
alias mv="mv -i -v"
alias grep="grep --color"
alias pstree="pstree -A"
alias sl=ls
alias ls="LSCOLORS=gxfxxxxxcxxxxxxxxxxxxx ls -G"
alias ll="ls -l"
alias be="bundle exec"
alias gid="git for-each-ref --sort=taggerdate --format='%(authordate:short) %(refname:short) %(subject)' refs/tags"
alias aws="ssh -at mon.ad-stir.com ssh"
alias e="emacs -nw"
alias ec="emacsclient -n"
alias diff-highlight="/usr/local/share/git-core/contrib/diff-highlight/diff-highlight"
alias p="padrino"
# distribution
if [ `uname` = "Darwin" ]; then
  alias zcat="gzcat"
[[ -f /usr/local/etc/bash_completion ]] && . /usr/local/etc/bash_completion
  # z
[[ -f `brew --prefix`/etc/profile.d/z.sh ]] && . `brew --prefix`/etc/profile.d/z.sh
elif [ `uname` = "Linux" ]; then
  alias e="emacs -nw"
  [[ -f /etc/bash_completion ]] && . /etc/bash_completion
  [[ -f ~/local/bin/z.sh ]] && . ~/local/bin/z.sh
  alias pbcopy='xsel --clipboard --input'
fi
# for emacsclient
[[ -d "$TMPDIR" ]] && export TMPDIR=`getconf DARWIN_USER_TEMP_DIR`


# screen clipboard
[[ ! -f /tmp/screen-exchange ]] && touch /tmp/screen-exchange

# tmux
alias tmux='tmux -f $HOME/.tmux.$(uname).conf'

# mysqlenv
[[  -d ~/.mysqlenv ]] && source ~/.mysqlenv/etc/bashrc

# cd typoしても予測
shopt -s cdspell

# direnv
eval "$(direnv hook bash)"

peco_history() {
    declare l=$(HISTTIMEFORMAT= history | history | awk '{for(i=2;i<NF;i++){printf("%s%s",$i,OFS=" ")}print $NF}'   |  peco --query "$READLINE_LINE")
    READLINE_LINE="$l"
    READLINE_POINT=${#l}
}
bind -x '"\C-r": peco_history'

export GOPATH=$HOME/dev
export PATH=$GOPATH/bin:$PATH
function peco-snippets() {
    local line
    local snippet

    if [ ! -e ~/.snippets ]; then
        return 1
    fi

    declare l=$(grep -v "^#" ~/.snippets | peco --query "$READLINE_LINE" | sed "s/^\[.*\] *//g")
    READLINE_LINE="$l"
    READLINE_POINT=${#l}
}
bind -x '"\C-x\C-x":peco-snippets'

function peco-gitcheckout() {
    git checkout `git branch | peco`
}
bind -x '"\C-x\c":peco-gitcheckout'

alias s='ssh $(grep "^Host" ~/.ssh/config|peco|awk "{print \$2}")'
