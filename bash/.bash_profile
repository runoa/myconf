export PS1="[\u@\h \W]\\$ "
source /usr/share/doc/git-1.8.3.1/contrib/completion/git-completion.bash
stty -ixon -ixoff
git config --global help.autocorrect -1
alias gti='git'
