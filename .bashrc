# load the system-wide environment
source /etc/profile

# Add a directory with your scripts to the path.
PATH=$PATH:~/bin

# Configure the CDPATH variable to include a frequently visited directories
#CDPATH=$CDPATH:~/data/projects/slackbuilds/

# Set the default editor
export VISUAL=vim
export EDITOR=vim

# Defining foreground variables for the prompt
P_BLACK="\[$(tput setaf 0)\]"
P_RED="\[$(tput setaf 1)\]"
P_GREEN="\[$(tput setaf 2)\]"
P_YELLOW="\[$(tput setaf 3)\]"
P_BLUE="\[$(tput setaf 4)\]"
P_MAGENTA="\[$(tput setaf 5)\]"
P_CYAN="\[$(tput setaf 6)\]"
P_WHITE="\[$(tput setaf 7)\]"
P_RESET="\[$(tput sgr0)\]"

# Setting a fancy prompt for the current user
export PS1="$P_GREEN\u$P_RED@$P_YELLOW\h:$P_CYAN\w$P_BLUE\\$ $P_RESET"

# Setting aliases
alias e='exit'
alias ll='ls -l'
alias lla='ls -al | less'
alias mkdir='mkdir -pv' 
alias rm='rm -i' 
alias 1.='cd .. ; pwd'
alias 2.='cd ../.. ; pwd'
alias 3.='cd ../../.. ; pwd'
alias 4.='cd ../../../.. ; pwd'
alias h='history'
alias eq='alsamixer -D equal'

alias emc='emacs -nw'

alias psp='ps aux | grep'
alias wic='nmap -sP 192.168.1.0/24'

#######################################################################
#                       Additional settings:                          #
#######################################################################

# To take advantage of multicore CPUs you can use the MAKEFLAGS variable. 
# For example the equivalent of "make -j2" would be:
export MAKEFLAGS="-j2"
