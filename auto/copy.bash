#!/bin/bash


rsync -va /home/sorin/.bashrc bashrc
rsync -va /home/sorin/.config/nvim/ nvim
rm -rf nvim/undo
rsync -va /home/sorin/.vimrc vimrc
rsync -va /home/sorin/.config/Xmodmap/Dvorak.conf Dvorak.conf
rsync -va /home/sorin/.config/Xmodmap/Xmodmap.conf Xmodmap.conf
rsync -va /home/sorin/.config/basic-vim-conf basic-vim-conf
