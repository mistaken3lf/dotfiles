" PLUGINS 
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
call plug#end()

" EDITOR SETTINGS
syntax on
set number
set ruler
set noswapfile
set nobackup
set encoding=utf8
set showmatch

" LEADER KEY
let mapleader=" "

" FILE TYPES
filetype on
filetype plugin on
filetype indent on

" TEXT FORMATTING
set shiftwidth=2
set softtabstop=2
set expandtab
set smartcase
set nowrap
set autoindent
set smartindent

" COLORS
colorscheme 1989
set colorcolumn=80
highlight ColorColumn ctermbg=0

" SEARCHING
set hlsearch

" NERDTREE
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>

" VIM AIRLINE
set laststatus=2
