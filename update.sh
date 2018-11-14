#!/bin/bash

HOME=/Users/$(whoami)

# TODO colocar num array os arquivos de interesse: bash_profile, vimrc, tmuxconfig. gitconfig, fish_config, iterm
# TODO tem que conferir se tenho dado sensível.

cp $HOME/.vimrc .

# TODO git diff e confirmacao
git add .
git commit -m 'Updating the dot files'
git push
