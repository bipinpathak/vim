syntax on
filetype plugin indent on

set noerrorbells
set nocompatible
set tabstop=4 
set softtabstop=4
set expandtab
set autoindent
set number relativenumber
set noswapfile
set incsearch
set rtp+=~/.vim/bundle/Vundle.vim
set completeopt-=preview

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'preservim/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'

call vundle#end()

set termguicolors
set bg=dark
let g:gruvbox_italic=1
colorscheme gruvbox

map<C-n> :NERDTreeToggle<CR> 
map<C-c> :w <Enter> :!g++ % <Enter>
map<C-r> :!./a.out
