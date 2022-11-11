# .bashrc

# share history across all terminals
# PROMPT_COMMAND='history -a; history -c; history -r'
# export PROMPT_COMMAND
if [[ $- == *i* ]]
then
    stty -echoctl
fi

# append to the history file, don't overwrite it
shopt -s histappend
export HISTCONTROL=ignoredups HISTSIZE=50000

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# User specific aliases and functions
alias ls='ls -p --color'
alias l='ls -lh'
alias l.='ls -d .* --color=tty'
alias ll='ls -l --color=tty'
#alias vi='gvim'
alias duf='TERM=xterm-256color duf'
alias rm='rm -i'
alias mount='mount | column -t'
alias mkdir='mkdir -p'
alias apt-get='sudo apt-get'
alias wget='wget -c'
alias mc='TERM=rxvt-unicode-256color mc -S modarin256'
alias sdr='screen -dr'
alias sls='echo; screen -ls |sed "/There/d;/ockets/d;s/\./ /" | column -t ;echo'
alias scummvm='scummvm -F -ghq3x'
# evince ha rotto il cazzo con la sua pletora di errori
# ogni volta che lo lanci...
alias evince='evince 2>/dev/null'

alias t='task'
alias ta='task add'

 cyan='\[\e[36;1m\]'
green='\[\e[32;1m\]'
nocol='\[\e[0m\]'

export PS1="$cyan\h $green\w\n\\$ $nocol"

#LS_COLORS="no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.jpg=00;35:*.gif=00;35:*.bmp=00;35:*.xbm=00;35:*.xpm=00;35:*.png=00;35:*.tif=00;35:"
#export LS_COLORS
[ -f ~/.dir_colors ] && eval $(dircolors -b ~/.dir_colors) 

source /etc/lsb-release
# export TZ="UTC+1"

# User specific environment and startup programs

CHISONO=PEM
TERMCMD=urxvtc
TERMINAL=urxvtc
SBCL_HOME=/opt/sbcl/lib/sbcl
WSMDIR=/opt/websm
PATH=$HOME/bin:$HOME/RemoteHosts:$HOME/.local/bin:$PATH:$HOME/.cargo/bin:/opt/sbcl/bin
#GNOME_KEYRING_CONTROL=
#GNOME_KEYRING_PID=

export CHISONO TERMCMD TERMINAL SBCL_HOME WSMDIR PATH GNOME_KEYRING_CONTROL GNOME_KEYRING_PID

export QT_STYLE_OVERRIDE=kvantum
export QT_QPA_PLATFORMTHEME="qt5ct"

conda() {
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/locale/paolo/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/locale/paolo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/locale/paolo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/locale/paolo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
}

SSH_AUTH_SOCK=/tmp/ssh-D7NyVPRsvL8L/agent.3963; export SSH_AUTH_SOCK;
SSH_AGENT_PID=3965; export SSH_AGENT_PID;
