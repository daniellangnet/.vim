" -------------------------------------------------
" General
" -------------------------------------------------

set nocompatible

" Install pathogen
execute pathogen#infect()

filetype plugin on
let mapleader="," " change mapleader from \ to ,

" -------------------------------------------------
" Visual elements
" -------------------------------------------------

set number " line numbers
syntax on
set background=dark
colorscheme solarized

" -------------------------------------------------
" searching and patters
" -------------------------------------------------

set incsearch " Hightlight pattern matches as you type
set ignorecase " Ingore case when using a search pattern
set smartcase " Override 'ignorecase' when pattern has upper case character
set showmatch " Show matching brackets when text indicator is over them

" -------------------------------------------------
" Backup and temp files
" -------------------------------------------------

" Turn backup off, since most stuff is in git anyway
set nobackup
set nowb
set noswapfile

" -------------------------------------------------
" Tabs
" -------------------------------------------------

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" -------------------------------------------------
" Keyboard mappings
" -------------------------------------------------

map <F2>  :NERDTreeToggle<CR>
