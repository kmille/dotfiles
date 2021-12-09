# Lines configured by zsh-newuser-install
export HISTFILE="$HOME/.histfile"
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
alias pi='ping -4 heise.de'
alias pi6='ping -6 heise.de'
alias h='htop'
alias grep='grep --color=auto'
alias ns='netstat -tulpn'
alias s='sudo'
alias vi='vim -p'
alias vim='vim -p'
alias less='less -IFX'
alias l='less -IFX'
alias x='xclip'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias g='git'
alias ip='ip -c'
alias od='ssh -i ~/.ssh/chaos summer@door.w17.io'
alias v='vagrant'
alias vgs='vagrant global-status' # collides with lvm
alias bd='base64 -d'
alias w='mosh irc-bouncer -- tmux attach-session -t irc'


alias monabove='xrandr --output LVDS1 --primary --auto  --output VGA1 --above LVDS1 --auto'
alias monright='xrandr --output LVDS1 --primary --auto  --output VGA1 --right-of LVDS1 --auto'
alias monleft='xrandr --output LVDS1 --right-of VGA1 --primary --auto  --output VGA1 --auto'
alias monoff='xrandr --output LVDS1 --primary --auto  --output VGA1 --off'
#alias vgaoff="xrandr --output VGA1 --off"
alias vgaoff="xrandr --auto"

alias pg='pgrep -afi'
#alias gor='pactl load-module module-tunnel-sink-new server=172.22.71.198 sink_name=gorleben channels=2 rate=44100'
alias gor='pactl load-module module-tunnel-sink-new server=192.168.10.60 sink_name=gorleben channels=2 rate=44100'
alias mb='ncmpcpp -h 192.168.10.60'
alias mw='ncmpcpp -h $(dig +short lounge.w17.io)'
alias mk='ncmpcpp -h $(dig +short kitchen.w17.io)'
alias pa='PULSE_SERVER=192.168.10.60 pavucontrol'


alias cdp='cd ~/projects'
alias cdg='cd ~/git'
alias cdc='cd ~/dc1/Dokumente/cheatsheets'
alias vv='source venv/bin/activate'
alias watch='watch --color'
alias rg='rg --no-ignore --hidden'
alias fd='fd -HIi'
export S_COLORS=auto
alias c="cal -m -y"
alias cw="cal -m -y -w"

check_cert() {
    echo "$1 is at $(dig +short $1)"
    openssl s_client -connect $1:443 < /dev/null 2>/dev/null | openssl x509 -noout -dates -subject -issuer
}


#make ctl+w remove just back to the next slash not the whole line
autoload -U select-word-style
select-word-style bash

autoload -Uz compinit promptinit
compinit
PROMPT='%F{magenta}%n%f@%F{green}%m%f:%F{yellow}%1~ '
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

export GOPATH=$HOME/go

if [ "$RUN_TMUX" = "yes" ] && [ -z "$TMUX" ]; then 
    exec tmux
fi

