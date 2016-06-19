" PLUGINS 
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()

" LEADER KEY
let mapleader=" "

" COLORS
syntax enable
set background=dark
colorscheme 1989
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

" VIM AIRLINE
set laststatus=2

" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" VIM-JAVASCRIPT
let g:javascript_enable_domhtmlcss = 1

" VIM-JSX
let g:jsx_ext_required = 0
