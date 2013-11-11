# file
umask 022
ulimit -c 0

# character code utf-8
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# default editor
export EDITOR=vim

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

# hook after command 
PROMPT_COMMAND='share_history && autojump'
shopt -u histappend
export HISTSIZE=9999

# invalid stop screen
stty stop undef

# android
[[ -d $HOME/Library/android-sdk-macosx/tools ]] && PATH=$HOME/Library/android-sdk-macosx/tools:$PATH 

# PATH
PATH=/usr/local/sbin:/usr/local/bin:~/local/bin:$PATH

# bash completion
[[ -f /usr/local/etc/bash_completion ]] && . /usr/local/etc/bash_completion

# rbenv
[[ -d "$HOME/.rbenv" ]] && eval "$(rbenv init -);" && export export PATH=$HOME/.rbenv/bin:$PATH

# plenv
eval "$(plenv init -)"
[[ -d "$HOME/.plenv" ]] && eval "$(plenv init -);" && export export PATH=$HOME/.env/bin:$PATH

# git branch prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\[\033[35m\]$(__git_ps1 " (%s)")\[\033[00m\] \[\033k\033\\\] \[\033[31m\]\$\[\033[00m\] '

if [[ -f ~/.nodebrew/nodebrew ]]; then
    export PATH=$HOME/.nodebrew/current/bin:$PATH
fi

# mysql prompt
MYSQL_PS1='\u@\h[\d]> '

# global alias
alias mysql="mysql --pager='less -S'"
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

# distribution
if [ `uname` = "Darwin" ]; then
  alias e="emacsclient";
  alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw";
  alias zcat="gzcat"
[[ -f /usr/local/etc/bash_completion ]] && . /usr/local/etc/bash_completion

  # z
[[ -f `brew --prefix`/etc/profile.d/z.sh ]] && . `brew --prefix`/etc/profile.d/z.sh
elif [ `uname` = "Linux" ]; then
  alias e="emacsclient"
  [[ -f /etc/bash_completion ]] && . /etc/bash_completion
  [[ -f ~/local/bin/z.sh ]] && . ~/local/bin/z.sh
fi
# for emacsclient
[[ -d "$TMPDIR" ]] && export TMPDIR=`getconf DARWIN_USER_TEMP_DIR`



# screen clipboard
[[ ! -f /tmp/screen-exchange ]] && touch /tmp/screen-exchange
