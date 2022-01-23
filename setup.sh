#!/bin/bash

DOT_FILES=(.zshrc .zsh_history .p10k.zsh .vimrc .vim .deno)

for dotfile in ${DOT_FILES[@]}
do
	ln -s $HOME/dotfiles/$dotfile $HOME/$dotfile
done
