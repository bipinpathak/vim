syntax on
filetype plugin indent on

set autochdir
set autoindent
set autoread
set bg=dark
set clipboard=unnamedplus
set completeopt-=preview
set encoding=utf-8
set expandtab
set fileformat=unix
set incsearch
set mouse=n
set nocompatible
set noerrorbells
set noswapfile
set number relativenumber
set rtp+=~/.vim/bundle/Vundle.vim
set shiftwidth=4
set softtabstop=4
set splitright
set splitbelow
set tabstop=4 
set termguicolors

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"editor
Plugin 'dense-analysis/ale'
Plugin 'unblevable/quick-scope'
Plugin 'ycm-core/YouCompleteMe'

"navigation
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

"ui and theme
Plugin 'morhetz/gruvbox'
Plugin 'psliwka/vim-smoothie'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

let g:airline_theme='gruvbox'
let g:gruvbox_italic=1
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

"compile and run
nmap<C-c> :!g++ % -Dbipinpathak -Wall -Wextra -pedantic -std=c++17 -O2 -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector <Enter>
nmap<C-z> :!./a.out <Enter>
nmap<C-p> :!python3 % <Enter>

"window navigation
map<C-h> <C-w>h
map<C-j> <C-w>j
map<C-k> <C-w>k
map<C-l> <C-w>l

"fzf
nmap ; :Files<CR>

"editor
map <C-?>  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"auto
:autocmd BufNewFile *.cpp 0r ~/Documents/code_here/template.cpp 
