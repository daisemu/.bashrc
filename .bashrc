#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

INPUT_COLOR="\[\033[0m\]"
DIR_COLOR="\[\033[0;33m\]"
DIR="\w"
 
LINE_VERTICAL="\342\224\200"
LINE_CORNER_1="\342\224\214"
LINE_CORNER_2="\342\224\224"
LINE_COLOR="\[\033[0;37m\]"
 
USER_NAME="\[\033[0;32m\]\u"
SYMBOL="\[\033[0;32m\]$"
 
if [[ ${EUID} == 0 ]]; then
    USER_NAME="\[\033[0;31m\]\u"
    SYMBOL="\[\033[0;31m\]#"
fi
 
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[0;37m\]\w\[\e[m\] \[\e[0;32m\]\$\[\e[m\] '
