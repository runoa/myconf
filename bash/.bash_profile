source $HOME/myconf/bash/git-completion.bash
source $HOME/myconf/bash/git-prompt.sh
export PS1="\[\033[32m\]\u \[\033[34m\]\W\[\033[31m\]\$(__git_ps1) \[\033[00m\]\$ "
export PYTHONPATH=/usr/local/lib/python3.5/site-packages/
stty -ixon -ixoff
git config --global help.autocorrect -1
alias g='git'
alias gs='git status'
alias gc='git checkout'
alias gcm='git checkout master'
alias gcb='git checkout -b'
alias gd='git diff'
alias gg='git grep -n -p'
alias gl='git log'
alias gpush='git push '
alias gpull='git pull '
alias gpusho='git push origin'
alias gpullo='git pull origin'
alias gpushom='git push origin master'
alias gpullom='git pull origin master'
alias gp='git push origin `git rev-parse --abbrev-ref HEAD`'
alias gf='git fetch origin'
alias gm='git merge'
alias gmm='git merge origin/master'
alias gb='git branch'
alias ack='ack -i'
alias rc='RAILS_ENV=development rails console'
alias s='source ~/.bash_profile'
alias bi='bundle install'
alias rc="bundle exec rubocop"
alias la="ls -al"

SOCK="/tmp/ssh-agent-$USER"
if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]
then
    rm -f $SOCK
    ln -sf $SSH_AUTH_SOCK $SOCK
    export SSH_AUTH_SOCK=$SOCK
fi
