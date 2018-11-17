# 補完機能
autoload -U compinit
compinit

# prompt
PROMPT='%m:%c %n$ '

# コマンド履歴
HISTFILE=~/.zsh_history
HISTSIZE=6000000
SAVEHIST=6000000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

# コマンド履歴検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# golang
export GOPATH=/User/yasuo

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# added by Anaconda3 5.2.0 installer
export PATH="/anaconda3/bin:$PATH"

# gcloud sdk
export PATH="$HOME/google-cloud-sdk/bin:$PATH"

# pyenv
eval "$(pyenv init -)"

# alias list
alias la='ls -la'
alias ll='ls -la'

# alias docker
alias d='docker'
alias dc='docker-compose'

# alias git
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gs='git status'
alias gst='git status'
alias gcm='git checkout master'
alias gpom='git pull origin master'
alias gmm='git merge master'

# alias ghq peco hub
alias gq='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'

# alias ghq peco vscode
alias c='code $(ghq root)/$(ghq list | peco)'

# alias ruby bundle
alias be='bundle exec'

# alias rails
alias bi='bundle install --path=vendor/bundle'
alias rs='bundle exec rails server'
alias rc='bundle exec rails console'


# alias Django
alias djrun='python manage.py runserver'
alias djm='python manage.py'

