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

"editor
Plugin 'ycm-core/YouCompleteMe'
Plugin 'Raimondi/delimitMate'

"ui
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'

"theme
Plugin 'morhetz/gruvbox'
call vundle#end()

set termguicolors
set bg=dark
let g:gruvbox_italic=1
colorscheme gruvbox

"mapings
nmap<C-n> :NERDTreeToggle<CR> 
nmap<C-c> :w <Enter> :!g++ % <Enter>
nmap<C-r> :!./a.out <Enter>
