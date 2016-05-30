" EDITOR SETTINGS
syntax on
set number
set ruler
set noswapfile
set nobackup
set colorcolumn=80
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

" SEARCHING
set hlsearch

" PLUGINS 
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
call plug#end()
