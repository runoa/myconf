source $HOME/myconf/bash/git-completion.bash
source $HOME/myconf/bash/git-prompt.sh
export PS1="\[\033[32m\]\u \[\033[34m\]\W\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ "
stty -ixon -ixoff
git config --global help.autocorrect -1
alias gti='git'

SOCK="/tmp/ssh-agent-$USER"
if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]
then
    rm -f $SOCK
    ln -sf $SSH_AUTH_SOCK $SOCK
    export SSH_AUTH_SOCK=$SOCK
fi
