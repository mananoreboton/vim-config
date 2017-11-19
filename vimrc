set nocompatible              " be iMproved, required
let mapleader=","
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'NLKNguyen/papercolor-theme'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'tomasr/molokai'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" format 
set showbreak=+++ 	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set linebreak		" Break lines at word (requires Wrap lines)
" set showmatch 
set virtualedit=block	" Enable set cursor beyond endline
set visualbell		" Use visual bell (no beeping)
"set nowrap
"set list "show spaces

" indent
set autoindent		" Auto-indent new lines
set shiftwidth=2	" Number of auto-indent spaces
set smartindent		" Enable smart-indent
set softtabstop=2	" Number of spaces per Tab
set smarttab

" search
set hlsearch
set smartcase		" Enable smart-case search
set ignorecase		" Always case-insensitive
set incsearch

" reload conf
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

" general
set autowrite
set hidden
set number
set undolevels=1000
set history=1000
set clipboard=unnamedplus

" map
nnoremap ; :
nnoremap j gj
nnoremap k gk
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"nnoremap p "+p
"nnoremap y "+y
"vnoremap p "+p
"vnoremap y "+y
nnoremap <leader>d dd
cmap w!! w !sudo tee % >/dev/null

" nmap <silent> ,/ :nohlsearch<CR>

if &t_Co >= 256 || has("gui_running")
  colorscheme molokai
endif

set background=dark
colorscheme PaperColor
