set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' "the plugin manager
Plugin 'scrooloose/nerdtree' "a file tree manager
Plugin 'sheerun/vim-polyglot' "A solid language pack for Vim.
Plugin 'neomake/neomake' "Asynchronous linting and make
Plugin 'vim-airline/vim-airline' "lean & mean status/tabline for vim that's light as air
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
set tabstop=4                       " number of visual spaces per TAB
set softtabstop=4                   " number of spaces in tab when editing
set expandtab                       " tabs are spaces
set number                          " show line number
set backspace=indent,eol,start
set cursorline                      " highlight current line
set showcmd                         " show command in bottom bar
filetype indent on                  " load filetype-specific indent files
set incsearch                       " search as characters are entered
set hlsearch                        " highlight matches
set wildmenu                        " visual autocomplete for command menu
set lazyredraw                      " redraw only when we need to.
set showmatch           " highlight matching [{()}]

map <C-b> :NERDTreeToggle<CR>
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <S-F> :Grepper<CR>
noremap <C-d> :sh<cr> " change between shell and vim

let g:ctrlp_working_path_mode = 0 " just the current directory are searched
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f'] " ignore files https://github.com/kien/ctrlp.vim/issues/174
let g:ctrlp_use_caching = 0 " new files or removed files are always updated at search

let g:airline_section_y = '%{strftime("%H:%M")}' " show hour at the airline bar
autocmd! BufWritePost * Neomake " required by neomake
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_events = ["InsertLeave"]
let g:completor_node_binary = '/usr/local/bin/node'
set omnifunc=syntaxcomplete#Complete

"colorscheme sublimemonokai
set termguicolors
filetype plugin indent on
