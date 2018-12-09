set nocompatible              " be iMproved, required from vundle
filetype off                  " required from vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required from vundle
Plugin 'VundleVim/Vundle.vim'

" >>> Plugins list

" The NERDTree is a file system explorer for the Vim editor
" toggle the sidebar :NERDTreeToggle
" at the explorer:
" o -> open/close the dir
" O -> open/close recursive the dir in all subdirectories
" r -> reload the three when there is a new file
" ctrl + w w -> jump to file or jump to sidebar.
Plugin 'scrooloose/nerdtree'

" Syntax checking hacks for vim.
Plugin 'scrooloose/syntastic'

" lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'

" enable auto-close chars
Plugin 'townk/vim-autoclose'
Plugin 'tpope/vim-endwise'

" autocomplete async
Plugin 'maralla/completor.vim'

" Search file
Plugin 'kien/ctrlp.vim'

" Editor config
Plugin 'editorconfig/editorconfig-vim'

" Theme
Plugin 'altercation/vim-colors-solarized'

" Auto save file
Plugin '907th/vim-auto-save'

" Elixir
Plugin 'elixir-editors/vim-elixir'

" All of your Plugins must be added before the following line
call vundle#end()            " required from vundle

" >>> custom commands

" >>> scrooloose/nerdtree <<<
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" shortcut to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" >>> scrooloose/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1

" >>> kien/ctrlp.vim
" ignore files at .gitignore https://github.com/kien/ctrlp.vim/issues/174
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" >>> maralla/completor.vim
" complete with tab
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" >>> just custom vim<<<
syntax on
set autoindent
set smartindent
set shiftwidth=4
set encoding=utf8
set tabstop=4
set number

" http://vim.wikia.com/wiki/Saving_a_file
map <Esc><Esc> :w<CR>

" Switch between panes Swap top/bottom or left/right split. 
" See https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally

" color scheme
colorscheme solarized
set background=light

" auto save custom changes
let g:auto_save = 1
let g:auto_save_no_updatetime = 1
let g:auto_save_in_insert_mode = 0

" airline
" show hour at the airline
let g:airline_section_y = '%{strftime("%H:%M")}'

">>> end all custom commands
filetype plugin indent on    " required from vundle
