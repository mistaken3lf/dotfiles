" PLUGINS
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
call plug#end()

" LEADER KEY
let mapleader=" "

" COLORS
syntax enable
set background=dark
colorscheme gruvbox

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
function! NERDStartup()
  if !argc() && !exists("s:std_in")
    exe NERDTree
  end
  if argc() && isdirectory(argv()[0]) && !exists("s:std_in")
    exe 'NERDTree' argv()[0]
    wincmd p
    ene
  end
endfunction

let NERDTreeShowHidden=1
let NERDTreeWinPos = "left"
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * call NERDStartup()

" RUST
autocmd BufNewFile,BufRead *.rs set filetype=rust