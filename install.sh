#!/bin/bash

VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"

if [ ! -d "$VUNDLE_DIR" ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLE_DIR"
fi

curl -s https://raw.githubusercontent.com/julioleitao/dotfiles/master/.vimrc > ~/.vimrc
