set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'sheerun/vim-polyglot'
Plugin 'neomake/neomake'
Plugin 'vim-airline/vim-airline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-endwise'
Plugin 'maralla/completor.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mhinz/vim-grepper'
Plugin '907th/vim-auto-save'
call vundle#end()

syntax on
set autoindent
set smartindent
set shiftwidth=4
set encoding=utf8
set tabstop=4
set number              " show line number
set backspace=indent,eol,start
set cursorline          " show a cursor line
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

map <C-b> :NERDTreeToggle<CR>
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <S-F> :Grepper<CR>

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] " ignore files at .gitignore: kien/ctrlp.vim/issues/174
let g:airline_section_y = '%{strftime("%H:%M")}' " show hour at the airline bar
autocmd! BufWritePost * Neomake " required by neomake
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_events = ["InsertLeave"]

filetype plugin indent on
