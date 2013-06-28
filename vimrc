execute pathogen#infect()

" -------------------------------------------------
" General
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

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" -------------------------------------------------
" Keyboard mappings
" -------------------------------------------------

map <C-n> :NERDTreeToggle<CR>
