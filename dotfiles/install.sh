#!/bin/sh

if ln -r 2>&1 | grep -q "invalid option" ; then
	link() {
		ln -s "$PWD/$1" "$2"
	}
else
	link() {
		ln -sr "$1" "$2"
	}
fi

link bashrc ~/.bash_aliases
link bash_profile ~/.bash_profile
link tmux.conf ~/.tmux.conf
link vimrc ~/.vimrc

mkdir -p ~/bin
link gg ~/bin/
