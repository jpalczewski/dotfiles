export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=1

source ~/.dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
    command-not-found
    git
    zsh-users/zsh-syntax-highlighting
    thefuck
    zsh-users/zsh-autosuggestions
    colored-man-pages
    
EOBUNDLES

antigen apply
#source $ZSH/oh-my-zsh.sh

antigen theme pygmalion
