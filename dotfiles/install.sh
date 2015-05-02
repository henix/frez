#!/bin/sh
ln -sr bashrc ~/.bash_aliases
ln -sr bash_profile ~/.bash_profile
ln -sr tmux.conf ~/.tmux.conf
ln -sr vimrc ~/.vimrc

mkdir -p ~/bin
ln -sr gg ~/bin/
