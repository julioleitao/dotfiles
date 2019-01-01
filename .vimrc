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
Plugin 'altercation/vim-colors-solarized'
Plugin 'mbbill/undotree'
Plugin 'mhinz/vim-grepper'
Plugin 'ludovicchabant/vim-gutentags'
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
colorscheme solarized
set background=light    
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

map <C-n> :NERDTreeToggle<CR>
" complete with tab. Used with completor.vim
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" mhinz/vim-grepper
nnoremap <leader>G :Grepper -tool ag -buffers<cr>
map <Esc><Esc> :up<CR>
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <S-F> :Grepper<CR>

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] " ignore files at .gitignore: kien/ctrlp.vim/issues/174
let g:airline_section_y = '%{strftime("%H:%M")}' " show hour at the airline bar
autocmd! BufWritePost * Neomake " required by neomake
set undodir=~/.undodir/
set undofile
let g:gutentags_cache_dir = '~/.tags_cache'

filetype plugin indent on
