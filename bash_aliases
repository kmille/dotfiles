alias ls='ls -lavh --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias p='ping '
alias pi='ping -c 4 8.8.8.8'
alias p6='ping6 '
alias h='htop '
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias whoiswho='whoami'
alias trace='traceroute'
alias m='more'
alias vi='vim'
alias vim='vim -p'
alias ns='netstat -tulpn'
alias l='less'
alias io='iotop --only'
alias c='curl'
alias g='git'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ip='ip -c'
alias sys='systemctl'
alias v='vagrant'
alias d='docker'
alias pg='pgrep -ai'
alias dc='docker-compose'
alias sys='systemctl'
alias s='sudo'
alias p='python'
alias i='ipython'


#tmux
alias t='tmux'
alias tl='tmux ls'
alias ta=tmux_attach

tmux_attach() {
	tmux attach-session -d -t $1
}

#laptop
alias od='ssh summer@door.w17.io'
alias vgaoff="xrandr --output VGA1 --off"
alias pacman='sudo pacman '
alias x='xclip'
alias w='mosh irc-bouncer -- tmux attach-session -t irc'

alias rg='rg --no-ignore --hidden'
alias fd='fdfind -HIi'
alias vv='source venv/bin/activate'
alias watch='watch --color'
alias bd='base64 -d'

check_cert() {
    echo "$1 is at $(dig +short $1)"
    openssl s_client -connect $1:443 < /dev/null 2>/dev/null | openssl x509 -noout -dates -subject -issuer
}

