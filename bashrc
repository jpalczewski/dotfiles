#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

pdfmerge() { gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile=$@ ; }


source ~/.commonbashrc

for f in ~/.bash/$(hostname).{rc,aliases}; do
    if [ -f f ]; then
        source $f
    fi
done

export VISUAL=vim
export EDITOR=vim
export TERM=xterm-256color


alias ls='ls --color=auto'



eval "$(thefuck --alias)"
