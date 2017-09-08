# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kmille/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#alias ls='ls -laSh --color=auto |l'
alias ls='ls -laSh --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias p='ping '
alias pi='ping -c 4 8.8.8.8'
alias p6='ping6 '
alias h='htop '
alias t='tmux'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias whoiswho='whoami'
alias trace='traceroute'
alias ns='netstat -tulpn'
alias s='sudo'
alias v='vim'
alias vi='vim'
alias l='less -FX'
alias d='dirs -v'
alias v='vim '
alias pacman='sudo pacman '
alias x='xclip'
alias p='python3'
alias p2='python2'
alias i='ipython'
alias g='git'

alias t='tmux'
alias tl='tmux ls'

tmux_attach() {
        tmux attach-session -d -t $1
}
alias ta=tmux_attach

#make ctl+w remove just back to the next slash not the whole line
autoload -U select-word-style
select-word-style bash

autoload -Uz compinit promptinit
compinit
promptinit
prompt walters

#Remembering recent directories
DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
      dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
        [[ -d $dirstack[1] ]] && cd $dirstack[1]
        fi
        chpwd() {
              print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
        }

        DIRSTACKSIZE=20

        setopt AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME

## Remove duplicate entries
setopt PUSHD_IGNORE_DUPS

## This reverts the +/- operators.
setopt PUSHD_MINUS

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions.zsh

if ! pgrep -u $USER ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval $(<~/.ssh-agent-thing) > /dev/null
fi

export VISUAL="vim"
#ctl s frwd search und nicht block console 
stty -ixon
export PATH=$PATH:/opt/messengerfordesktop
