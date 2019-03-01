" PLUGINS
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" LEADER KEY
let mapleader=" "

" COLORS
syntax enable
set background=dark
colorscheme gruvbox
set colorcolumn=80
highlight ColorColumn ctermbg=0

" TEXT FORMATTING
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set nowrap
set autoindent

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

" RUST
autocmd BufNewFile,BufRead *.rs set filetype=rust
