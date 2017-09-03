set nocompatible
filetype off    " Required

set rtp+=~/.vim/bundle/vundle/

call vundle#begin()

Plugin 'gmarik/vundle'    " Required
Plugin 'msanders/snipmate.vim'

call vundle#end()

set ruler
set number
syntax on
set smartcase
set hlsearch
set magic
set encoding=utf8

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set si
set wrap

set wildmenu

filetype plugin indent on " Required
