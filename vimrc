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

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

set smartindent
set autoindent 
set wrap "Wrap lines

" load indent file for the current filetype
filetype indent on

" -------------------------------------------------
" Keyboard mappings
" -------------------------------------------------

map <F2>  :NERDTreeToggle<CR>

" insert blank line without enterting insert
map <C-o> o<ESC>
