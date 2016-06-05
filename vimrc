" PLUGINS 
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
call plug#end()

" LEADER KEY
let mapleader=" "

" COLORS
colorscheme 1989
set colorcolumn=80
highlight ColorColumn ctermbg=0

" TEXT FORMATTING
syntax enable
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set nowrap

" UI CONFIG
filetype plugin indent on
set number
set showcmd
set cursorline
set wildmenu
set ruler
set noswapfile
set nobackup
set encoding=utf8
set showmatch
set history=50

" SEARCHING
set incsearch
set hlsearch
set smartcase
set ignorecase

" CODE FOLDING
set foldenable
set foldlevelstart=10
set foldnestmax=10

" NERDTREE
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>

" VIM AIRLINE
set laststatus=2
