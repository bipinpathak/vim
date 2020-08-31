syntax on
filetype plugin indent on

set noerrorbells
set nocompatible
set tabstop=4 
set softtabstop=4
set expandtab
set autoindent
set number relativenumber
set mouse=n
set autoread
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

"nerdtree
nmap<C-n> :NERDTreeToggle<CR> 

"compile and run
nmap<C-c> :w <Enter> :!g++ % <Enter>
nmap<C-r> :!./a.out <Enter>

"window navigation
map<C-h> <C-w>h
map<C-j> <C-w>j
map<C-k> <C-w>k
map<C-l> <C-w>l

"auto
:autocmd BufNewFile *.cpp 0r ~/Documents/codes/template.cpp 
