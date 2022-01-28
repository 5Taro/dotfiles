#vim
alias vz='vim ~/.zshrc'
alias vv='vim ~/.vimrc'
alias vtoml='vim ~/.vim/dein/dein.toml'
alias vp='vim -p'
alias v='vim'

#cd
alias ....='cd ../../../'
alias ...='cd ../../'
alias dot='cd ~/dotfiles'

#ls
alias l='ls --color=auto'
alias ls='ls --color=auto'
alias la='ls -la --color=auto'
alias ll='ls -l --color=auto'
alias lR='ls -R --color=auto'

#git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'

#others
alias sz='source ~/.zshrc'
alias mkdircd='(){mkdir $1 && cd $1}'
alias m='make'
alias c='clear'
alias grep='grep --color=auto'

#global alias
alias -g C='| clip.exe'
alias -g G='| grep --color=auto'
alias -g L='| less'
alias -g VR='>result && view result'

#alias nheader='norminette -R CheckForbiddenSourceHeader'
#alias Wgcc='gcc -Wall -Wextra -Werror'
#alias fa='find . -type f|sort|grep ex0'
