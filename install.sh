#!/bin/bash

VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"

if [ ! -d "$VUNDLE_DIR" ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLE_DIR"
fi

DOTFILES=(.vimrc .gitconfig)

for file in ${DOTFILES[@]}; do
  wget https://raw.githubusercontent.com/julioleitao/dotfiles/master/${file}
  mv ${file} .${file}
  mv .${file} $HOME
done
