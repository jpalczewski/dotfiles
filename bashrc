#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

pdfmerge() { gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile=$@ ; }

PATH=$PATH:/home/erxyi/.go/bin:/home/erxyi/.Nozbe:/home/erxyi/FOXTROTT/bin

export GOPATH=/home/erxyi/.go
export KDEHOME=/home/erxyi/.kde4
export VISUAL=vim
export EDITOR=vim

TERM=xterm-256color
alias ls='ls --color=auto'
alias lotto='od -An -N1 -i /dev/random'
alias sagenotebook='sage -c "notebook(automatic_login=True)"'
alias terminaloff='watch nologin'
alias pythonnotebook='jupyter notebook'
alias foxit='KDEHOME=~/.kde4-foxit foxitreader' 
#PS1='[\u@\h \W]\$ '
source .commonbashrc 


eval $(thefuck --alias)
