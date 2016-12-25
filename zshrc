export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=1
export TERM="xterm-256color"
export ZSH_CUSTOM=$HOME/.dotfiles/zsh-custom


source ~/.dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
    command-not-found
    git
    zsh-users/zsh-syntax-highlighting
    thefuck
    zsh-users/zsh-autosuggestions
    colored-man-pages
    unixorn/warhol.plugin.zsh    
EOBUNDLES

antigen apply
#source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/zsh-custom/themes/pygmalion-fix.zsh-theme
#antigen theme pygmalion-fix
