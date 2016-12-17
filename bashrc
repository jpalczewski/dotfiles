#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ $- = *i* ]] && source $HOME/.dotfiles/liquidprompt/liquidprompt 

pdfmerge() { gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile=$@ ; }

#source $HOME/.commonbashrc

for f in $HOME/.bash/$(hostname).{rc,aliases}; do
    if [ -f f ]; then
        source $f
    fi
done


set -o vi
export VISUAL=vim
export EDITOR=vim
export TERM=xterm-256color


alias ls='ls --color=auto'



eval "$(thefuck --alias)"
