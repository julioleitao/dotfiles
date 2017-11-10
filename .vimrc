set nocompatible
filetype off    " Required

set rtp+=~/.vim/bundle/vundle/

call vundle#begin()

Plugin 'gmarik/vundle'    " Required
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'townk/vim-autoclose'
Plugin 'bling/vim-airline'

call vundle#end()

" customazing
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
"

" start NERDTree by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"


" setup for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"

let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification
set backspace=indent,eol,start

filetype plugin indent on " Required
