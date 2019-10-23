#bashrc

#aliasesの読み込み
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


#色を保持
LBLUE='\[\e[36;40m\]'
PURPLE='\[\e[35;40m\]'
GREEN='\[\e[32;40m\]'
ORANGE='\[\e[33;40m\]'
YELLOW='\[\e[37;40m\]'
PINK='\[\e[31;40m\]'
WHITE='\[\e[37;0m\]'

# プロンプトの設定 
function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="${LBLUE}\h:${ORANGE}\W ${GREEN}\u${YELLOW}\\$ ${PINK}${WHITE}${PINK}\$(parse_git_branch)${WHITE}"
