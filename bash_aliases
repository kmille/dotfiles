alias ls='ls -vlah --color=auto'
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
alias vi='vim'
alias vim='vim -p'
alias l='less -FX'
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
alias gor='pactl load-module module-tunnel-sink-new server=gorleben.flokli.de sink_name=gorleben channels=2 rate=44100'
alias m='ncmpcpp -h whisky.w17.io'
