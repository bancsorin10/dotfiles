# make sure alacritty is the terminal (this should not be in the zshrc tho)
# export TERM=alacritty

#aliases
alias ls='ls --color=auto'
alias ll="ls -lA --group-directories-first"
alias ll="exa -la --group-directories-first"
alias set_monitor="xrandr --output HDMI-1 --auto --left-of eDP-1"
alias set_monitor_off="xrandr --output HDMI-1 --off"
alias set_monitor_rate="xrandr --output HDMI-1 --mode 1920x1080 -r 75"
alias fud="source fud"
alias mdprev="markdown-reader"
alias vf="vifm"
alias ..="cd ../"
alias ...="cd ../../"
alias pdf_make="pandoc -f markdown-implicit_figures -t pdf -V geometry:margin=1in -o report.pdf"
alias gcc-plus="gcc -Wall -Wextra -Werror -Wconversion -ggdb -fsanitize=address"
alias gcc-fast="gcc -march=native -Ofast"
alias planner="com.github.alainm23.planner"
# the path needs to be done absolute insided the launch
# alias rp-pipe="sh /home/sorin/HDD/faculta/faculta/programerandom/PIPEv4.3.0/launch.sh"
#
# alias for work
alias reset-ipsec="sudo ipsec down ni-vpn && sleep 1 && sudo ipsec up ni-vpn"


#language correction to locales
export LC_ALL=C

#history in cache directory
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# #space ship loading
# autoload -U promptinit; promptinit
# prompt spaceship
# path update for scripts and go
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export TESSDATA_PREFIX="/home/sorin/.tesseract/tessdata/"
export EDITOR=nvim


# source /home/sorin/.config/broot/launcher/bash/br


#vim mode
source /home/sorin/.zsh/zsh-vi-mode/zsh-vim-mode.plugin.zsh


alias du=dust
alias grep=rg

alias skype=skypeforlinux
alias dosbox="dosbox -conf ~/.config/dosbox/dosbox-0.74-3.conf"

#syntax highlight
# source ~/.syntax-zsh/zsh-syntax-highlighting.zsh

# fortune

# alias nv="/home/sorin/clones/nightly-nvim/nvim-appimage/squashfs-root/usr/bin/nvim"
alias nv=nvim
alias matlab='/home/sorin/.local/matlab_tmp/bin/matlab'
alias impss="import png:- | xclip -selection c -t image/png"
alias t=tmux
alias steam="DRI_PRIME=1 steam"
alias music_server="minidlnad"
#
### more work stuff
export P4USER=sbanc
export P4CONFIG=p4config
export nibuild_perforce_p4Port=cluperforce01:1999
export nibuild_perforce_clientspec=sbanc-sorin-per
export nibuild_penguin_p4Port=cluperforce01:1888
export nibuild_penguin_clientspec=sbanc-sorin-pen
export nibuild_zipDownloader=http://ro-clu-app1:8020
export nibuild_fileServerMirrors=penguin://user/rpora/fileServerMirrors



# alias for server wake up
alias wake_tank="wol -v 6c:62:6d:d8:c4:b5 --ipaddr=192.168.100.108"
alias close_tank="ssh -t tank 'sudo shutdown -h now'"
alias yt-dlp="bash ~/clones/yt-dlp/yt-dlp.sh"

alias ddd="~/Downloads/Discord/Discord & disown"

export BROWSER=firefox


# I think this thing should be always last in the config
# export STARSHIP_CONFIG=~/.config/starship/starship.toml
# eval "$(starship init zsh)"

export PS1="%B%F{red}%n@%m%f::%F{cyan}%3/%f >>%b "
