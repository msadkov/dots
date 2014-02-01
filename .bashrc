function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1:/'
}
export PS1='[\[\033[32m\]\u@\h\[\033[00m\]:$(parse_git_branch)\[\033[34m\]\w\[\033[00m\]]\$ '
export PAGER='less'

alias ls='ls -G'
alias vi='vim'
