# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
source /etc/bash_completion.d/subscription-manager
export PS1="\033[94m\h @\W\033[0m"
alias bp2='python2.7 -m bpython'
alias bp3='python3.4 -m bpython'
export GOPATH=$HOME/golang
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/usr/local/go/bin:/root/bin:/root/golang/bin
