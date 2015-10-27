export PS1="[\u@\h \W]\\$ "
source /usr/share/doc/git-2.1.0/contrib/completion/git-completion.bash
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
