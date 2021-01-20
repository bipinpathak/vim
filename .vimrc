syntax on
filetype plugin indent on

set noerrorbells
set nocompatible
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set splitright
set splitbelow
set autoindent
set number relativenumber
set termguicolors
set autoread
set noswapfile
set incsearch
set rtp+=~/.vim/bundle/Vundle.vim
set completeopt-=preview
set clipboard=unnamedplus
set bg=dark
set mouse=n
set autochdir

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"editor
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-endwise'
Plugin 'rstacruz/vim-closer'
Plugin 'unblevable/quick-scope'
Plugin 'dense-analysis/ale'

"navigation
Plugin 'preservim/nerdtree'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'

"ui and theme
Plugin 'psliwka/vim-smoothie'
Plugin 'morhetz/gruvbox'
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

"window navigation
map<C-h> <C-w>h
map<C-j> <C-w>j
map<C-k> <C-w>k
map<C-l> <C-w>l

"fzf
nmap ; :Files<CR>

"nerdtree
nmap<C-n> :NERDTreeToggle<CR> 

"auto
:autocmd BufNewFile *.cpp 0r ~/Documents/code_here/template.cpp 
