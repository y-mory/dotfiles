# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias ls='ls -AFG'
alias ll='ls -lAFG'
alias tree='tree -N'

# プロンプト表示を変更
source ~/.git-prompt.sh
source ~/.git-completion.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
export PS1='\[\e[1;32m\]\u@[\t]\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]$(__git_ps1)$ '


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
