call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
call plug#end()

filetype plugin on
filetype plugin indent on 
syntax on
set t_Co=256
set background=dark
colorscheme desert
let g:jsx_ext_required = 0
set hlsearch
set incsearch
set encoding=utf8
set number
set mouse=a
set shiftwidth=2
set softtabstop=2
set expandtab
set ruler
set ignorecase
set smartcase
set nobackup
set nowb
set noswapfile
