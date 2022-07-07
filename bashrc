#CHANGES MADE BY ya boi
export PATH=/home/jack/.local/bin:$PATH
shopt -s checkwinsize
shopt -s autocd #cd by typing dir name
set -o vi
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE= HISTFILESIZE=

# ALIASES'esesesess made by ya boi JACKY
alias sm='node ./SMLoadr-v1.23.0/smloadr/SMLoadr.js'
alias q='exit'
alias ba='nvim ~/.bashrc'
alias ab='nvim ~/.bashrc'
alias so='source ~/.bashrc'
alias cwd='printf "%q" "$(pwd)" | clip.exe'
alias co='clip.exe'
alias p='echo "PINGING" && ping duckduckgo.com -c 3'
alias v='nvim'
alias V='nvim'
alias u='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
alias grep='grep -i --color=auto'
alias o='explorer.exe'
alias dtrx='dtrx -n -q'
alias bc='bc -q'
alias pro='echo "Opening ProtonVPN" && cmd.exe /c start "" "C:\Program Files (x86)\Proton Technologies\ProtonVPN\ProtonVPN.exe" 2>/dev/null'
alias note='echo "Opening Joplin notes" && cmd.exe /c start "" "C:\Program Files\Joplin\Joplin.exe" 2>/dev/null' 
alias gpg='gpg2'
alias sd='. /home/jack/.local/bin/sd_script'
alias sc='echo "Opening Scripts Directory" && v ~/.local/bin/'
alias deez='echo "Opening Deezloader" && cmd.exe /c start "" "C:\Users\Jack\AppData\Local\Programs\Deezloader Remix\Deezloader Remix.exe" 2>/dev/null'
alias qbit='echo "Opening Qbittorrent" && cmd.exe /c start "" "C:\Program Files\qBittorrent\qbittorrent.exe" 2>/dev/null'
alias ls="ls --color=auto --group-directories-first"
alias t='cmd.exe /c start "" "C:\Program Files (x86)\Mozilla Thunderbird\thunderbird.exe" 2>/dev/null'
alias s='echo "Frospodo79" | clip.exe && echo "Opening scrcpy..." && cmd.exe /c "C:\Users\Jack\AppData\Local\Packages\CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc\LocalState\rootfs\opt\scrcpy\scrcpy.exe" --window-width 500 --window-height 0 -b 13M && echo "" | clip.exe'
alias ...='../..'
alias ....='../../..'
alias ex='cmd.exe /c "D:\Jack\Documents\Rando\Scripts\exit2.exe" 2>/dev/null 1>&2'
alias rm='safe-rm -v'
alias tor='echo "Opening Tor..." && cmd.exe /c start "" "D:\Jack\Documents\Rando\Programs\Tor Browser\Browser\firefox.exe" 2>/dev/null 1>&2'
alias st='~/.local/bin/steamExit.sh'
alias ga='gallery-dl'
alias uq='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && exit'
alias mansplain='man'
alias m='~/.local/bin/mpchc.sh'
alias lo='cd ~/.local/bin/'
alias qb='cmd.exe /c start "" "C:\Program Files\qBittorrent\qbittorrent.exe" 2>/dev/null 1>&2'
alias Q='exit'
alias c='cd "$@" && ls -hN --color=auto --group-directories-first'
alias r='ranger'
#finish


# Launching programs
alias \
	cmd="cmd.exe /c" \
	speedtest="speedtest-cli --bytes --secure --simple" \
	lc="clear && ls -hN --color=auto --group-directories-first" \
	sin="cd /mnt/d/jack/Documents/Rando/Strategic\ Intelligence\ Network/" \
	ll="ls -alF" \
	la="ls -A" \
	al="ls -la" \
	l="ls -RgCF *" \
	sl="ls" 

#Functions

tf() {
    units tempF\("$1"\) tempC
}

y () {
    youtube-dl "$@" -o '/mnt/d/jack/Videos/Youtube/%(title)s.%(ext)s' || echo -e "\nUpdating\n" && pip install youtube-dl -U && youtube-dl "$@" -o '/mnt/d/jack/Videos/Youtube/%(title)s.%(ext)s'
    #find Videos downloaded in last 5 mins 
    findPath="$(find /mnt/d/jack/Videos/Youtube/ -cmin -5)"
    echo "$findPath"
    goodPath="$(wslpath -w "$findPath")"
    echo "goodPath"
    ~/.local/bin/mpchc.sh "goodPath"
}

#y () {
#    echo "$unixPath"
#        if [[ -e $unixPath ]]; then
#            winvid="$(wslpath -w "$unixPath")"
#            #play
#            cmd.exe /c start "" "C:\Program Files\MPC-HC\mpc-hc64.exe" "$winvid" 2> /dev/null   
#        else
#            echo "File does not exist"
#        fi
#
#    unixPath="$(realpath "$findvid")"
#    }
#
#    #Downloading Video
#    youtube-dl -f 'bestvideo[height<=2160]+bestaudio/best[height<=2160]' -i -o '/mnt/d/jack/Videos/Youtube/%(title)s.%(ext)s' --no-warnings --merge-output-format mkv "$@" 
#
#	if [[ $? -ne 0 ]]; then
#		echo "2nd Try"
#		youtube-dl -o '/mnt/d/jack/Videos/Youtube/%(title)s.%(ext)s' --no-warnings --merge-output-format mkv "$@" || echo "2nd Try failed"
#
#		if [[ $? -ne 0 ]];then 
#            echo "3rd Try"
#			pip3 install youtube-dl -U && youtube-dl "$@" -o '/mnt/d/jack/Videos/Youtube/%(title)s.%(ext)s' --merge-output-format mkv || echo "FAILED"
#		fi
#	fi
#		
#	#now finding video
#	findVid="$(find /mnt/d/jack/Videos/Youtube -maxdepth 1 -iname "*.mkv" -mmin -5 -type f)"
#	echo "$findVid" || echo "No Video Found"
#	if [[ -z "$findVid" ]]; then
#		echo "Playing Videos from Videos Directory"
#        findVid2="$(find /mnt/d/jack/Videos/Youtube -maxdepth 1 -iname "*.mkv" -mmin -3 -type f)"
#        echo "$findVid2" || echo "No Video Found"
#        play /mnt/d/jack/Videos/Youtube
#	else 
#        echo "PLAYING ACTUAL VIDEO"
#		play "$findvid"
#	fi
#}

pkill () {
    cmd.exe /c Taskkill /IM "$1" /T /F
}

function fsrc () {
    xdg-open "$(apt-cache show "$1" | grep Homepage | head -n1 | awk {'print $2'})" 
}

function mu () {
	#function to open pdf's in mupdf
	pdfpath="$(wslpath -w "$(realpath "$1")")"
	cmd.exe /c start "" "C:\Program Files\mupdf-1.14.0-windows\mupdf.exe" "$pdfpath" 2>/dev/null	
}

cd() {

	builtin cd "$@" && ls -hN --color=auto --group-directories-first
}

function foo() {
	#function to play music files on foobar
    if [[ $? -eq '0' ]]; then
        paty="$(realpath "$1")"
        Path="$(wslpath -w "$paty")"
        cmd.exe /c start "" "C:\Program Files (x86)\foobar2000\foobar2000.exe" /add "$Path" 2>/dev/null
    else 
        echo "File doesn't exist"
    fi
}

function fr() {
	if [[ $1 == 'yt' ]]; then
        cmd.exe /c start "" "C:\Program Files\Mozilla Firefox\firefox.exe" https://www.invidio.us/ 2>/dev/null
	else
        cmd.exe /c start "" "C:\Program Files\Mozilla Firefox\firefox.exe" "$1" 2>/dev/null
fi
}

function sdn() {
	if [[ $# -eq 0 ]]; then
		shutdown.exe /p
	else
		if [[ "$1" = "-r" ]]; then
            echo "Restarting..."
			shutdown.exe /r /t 0
        else
            echo "Wrong input, '-r' to restart"
		fi
	fi
}

function f() {
    find . -iname "*$1*" -type f 
}

function fd() {
	find . -iname "*$1*" -type d
}

#Other Bash Shit 

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

#Add color in manpages for less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
