# Created by newuser for 5.8

#aliases
alias ls='ls --color=auto'
alias ll="ls -lA --group-directories-first"
alias fuzd="source fuzd"

#arch logo
#neofetch

#language correction to locales
export LC_ALL=C

#history in cache directory
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

#space ship loading
autoload -U promptinit; promptinit
prompt spaceship
#path update for scripts and go
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.local/bin"
export EDITOR=vim

# source /home/sorin/.config/broot/launcher/bash/br


#vim mode
source /home/sorin/.zsh/zsh-vi-mode/zsh-vim-mode.plugin.zsh


alias du=dust
alias grep=rg

alias skype=skypeforlinux
alias dosbox="dosbox -conf ~/.config/dosbox/dosbox-0.74-3.conf"

#syntax highlight
source ~/.syntax-zsh/zsh-syntax-highlighting.zsh
