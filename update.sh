#!/bin/bash

HOME=/Users/$(whoami)

# TODO colocar num array os arquivos de interesse: bash_profile, vimrc, tmuxconfig. gitconfig, fish_config

cp $HOME/.vimrc .

git add .
git commit -m 'Updating the dot files'
git push
