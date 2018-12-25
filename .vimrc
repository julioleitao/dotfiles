set nocompatible              " be iMproved, required
filetype off                  " required from vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required from vundle
Plugin 'VundleVim/Vundle.vim'

" >>> Plugins list
" The NERDTree is a file system explorer for the Vim editor
Plugin 'scrooloose/nerdtree'
" Languages plugin
Plugin 'sheerun/vim-polyglot'
" Code checks to find mistakes
Plugin 'neomake/neomake'
" lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
" enable auto-close chars
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-endwise'
" autocomplete async
Plugin 'maralla/completor.vim'
" Search file
Plugin 'kien/ctrlp.vim'
" Editor config
Plugin 'editorconfig/editorconfig-vim'
" Theme
Plugin 'altercation/vim-colors-solarized'
" Save the file changes. Very helpful.
Plugin 'mbbill/undotree'
" Search in files
Plugin 'mhinz/vim-grepper'
" Amazing go to definition
Plugin 'ludovicchabant/vim-gutentags'

" All of your Plugins must be added before the following line
call vundle#end()            " required from vundle

" >>> custom commands

" >>> scrooloose/nerdtree <<<
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" shortcut to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" >>> kien/ctrlp.vim
" ignore files at .gitignore https://github.com/kien/ctrlp.vim/issues/174
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" >>> maralla/completor.vim
" complete with tab
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" >>> mhinz/vim-grepper
nnoremap <leader>G :Grepper -tool ag -buffers<cr>

" >>> just custom vim<<<
syntax on
set autoindent
set smartindent
set shiftwidth=4
set encoding=utf8
set tabstop=4
set number
set backspace=indent,eol,start
set cursorline

" Based on http://vim.wikia.com/wiki/Saving_a_file
map <Esc><Esc> :up<CR>

" Based on http://vim.wikia.com/wiki/Switching_between_files
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

" Search in the project
nnoremap <S-F> :Grepper<CR>

" Switch between panes Swap top/bottom or left/right split. 
" See https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
" color scheme
colorscheme solarized
set background=light
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" airline
" show hour at the airline
let g:airline_section_y = '%{strftime("%H:%M")}'

" >>> neomake/neomake
autocmd! BufWritePost * Neomake

" >>> mbbill/undotree
set undodir=~/.undodir/
set undofile

" >>> ludovicchabant/vim-gutentags
let g:gutentags_cache_dir = '~/.tags_cache'

">>> end all custom commands
filetype plugin indent on    " required from vundle

