# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
#HISTSIZE=1000
#SAVEHIST=1000
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY



bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kmille/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#alias ls='ls -laSh --color=auto |l'
alias ls='ls -vlah --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias pi='ping 8.8.8.8'
alias h='htop '
alias t='tmux'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias whoiswho='whoami'
alias trace='traceroute'
alias ns='netstat -tulpn'
alias s='sudo'
alias vi='vim'
alias vim='vim -p'
alias l='less -IFX'
alias d='dirs -v'
alias x='xclip'
alias p='python3'
alias p2='python2'
alias i='ipython3'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias g='git'
alias sys='systemctl'
alias ip='ip -c'

alias t='tmux'
alias tl='tmux ls'
alias od='ssh -i ~/.ssh/chaos summer@door.w17.io'
#alias vgaoff="xrandr --output VGA1 --off"
alias vgaoff="xrandr --auto"

alias v='vagrant'
alias vgs='vagrant global-status'

alias bd='base64 -d'

tmux_attach() {
        tmux attach-session -d -t $1
}
alias ta=tmux_attach

alias w='mosh irc-bouncer -- tmux attach-session -t irc'


alias monabove='xrandr --output LVDS1 --primary --auto  --output VGA1 --above LVDS1 --auto'
alias monright='xrandr --output LVDS1 --primary --auto  --output VGA1 --right-of LVDS1 --auto'
alias monleft='xrandr --output LVDS1 --right-of VGA1 --primary --auto  --output VGA1 --auto'
alias monoff='xrandr --output LVDS1 --primary --auto  --output VGA1 --off'

alias pg='pgrep -ai'
#alias gor='pactl load-module module-tunnel-sink-new server=172.22.71.198 sink_name=gorleben channels=2 rate=44100'
alias gor='pactl load-module module-tunnel-sink-new server=192.168.10.60 sink_name=gorleben channels=2 rate=44100'
alias mb='ncmpcpp -h 192.168.10.60'
alias mw='ncmpcpp -h $(dig +short lounge.w17.io)'
alias mk='ncmpcpp -h $(dig +short kitchen.w17.io)'
alias pa='PULSE_SERVER=192.168.10.60 pavucontrol'



alias cat='bat -p'
alias cdp='cd ~/dc1/puppet'

alias vv='source venv/bin/activate'
alias watch='watch --color'
alias rg='rg --no-ignore'


alias zbx='/home/kmille/dc1/Dokumente/projects/jiiiira/venv/bin/python /home/kmille/dc1/Dokumente/projects/jiiiira/zbx.py'

#make ctl+w remove just back to the next slash not the whole line
autoload -U select-word-style
select-word-style bash

autoload -Uz compinit promptinit
compinit
PROMPT='%F{red}%n%f@%F{blue}%m%f %F{yellow}%1~%f %# '
#promptinit
#prompt walters

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

# begin git branch prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %b '
setopt PROMPT_SUBST
PROMPT='%F{red}%n%f@%F{blue}%m%f %F{yellow}%1~%f${vcs_info_msg_0_}%# '
# begin git branch prompt


if ! pgrep -u $USER ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval $(<~/.ssh-agent-thing) > /dev/null
fi

# make cursor taste faster
xset r rate 220 40

export VISUAL="vim"

#ctl s frwd search und nicht block console 
stty -ixon


# fix Vagrant
VAGRANT_DISABLE_VBOXSYMLINKCREATE=1


export TERM=xterm
export LS_COLORS="di=01;36"


if [ "$RUN_TMUX" = "yes" ] && [ -z "$TMUX" ]; then 
    exec tmux
fi

