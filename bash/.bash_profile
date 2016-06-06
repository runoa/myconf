source $HOME/myconf/bash/git-completion.bash
source $HOME/myconf/bash/git-prompt.sh
export PS1="\[\033[32m\]\u \[\033[34m\]\W\[\033[31m\]\$(__git_ps1) \[\033[00m\]\$ "
export PYTHONPATH=/usr/local/lib/python3.5/site-packages/
stty -ixon -ixoff
git config --global help.autocorrect -1
alias g='git'
alias gs='git status'
alias gc='git checkout'
alias gd='git diff'
alias ack='ack -i'

SOCK="/tmp/ssh-agent-$USER"
if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]
then
    rm -f $SOCK
    ln -sf $SSH_AUTH_SOCK $SOCK
    export SSH_AUTH_SOCK=$SOCK
fi
