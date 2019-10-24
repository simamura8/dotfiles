#bash_aliases

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ~'
alias wget='wget -c'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# docker
alias dstart='sudo service docker start'
alias d='docker'
alias dc='docker-compose'
alias dce='docker-compose exec'

# git
alias g='git'
alias gs='git status'
alias gl='git log'
alias ga='git add -u'
alias gco='git commit -m'
alias gch='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gp='git push'

#laravel
alias cddev="cd /var/www/front"
alias pa='php artisan'
alias pam='php artisan migrate'
alias par='php artisan migrate:rollback'

# on_windows
alias cdimamura="cd /mnt/c/Users/EC07/imamura"
alias cddesk="cd /mnt/c/Users/EC07/Desktop"
