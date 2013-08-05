" -------------------------------------------------
" General
" -------------------------------------------------

set nocompatible

" Install pathogen
execute pathogen#infect()

filetype plugin on
filetype indent on
let mapleader="," " change mapleader from \ to ,

" hide buffers instead of closing them when opening other files for editing
set hidden

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

" toggle search highlighting
map <leader>l :set hlsearch!<CR>

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
set nowrap " do not wrap lines!

" -------------------------------------------------
" General keyboard mappings
" -------------------------------------------------

imap jk <Esc>

" insert blank line without entering insert
map <C-o> o<ESC>

" open CtrlP in buffer files mode
nmap ; :CtrlPBuffer<CR>


" -------------------------------------------------
" Split windows
" -------------------------------------------------

" Make it easier to navigate between split windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Opne new split panes to right and bottom which is more natural
set splitbelow
set splitright

" -------------------------------------------------
" delimitMate customizations
" -------------------------------------------------

" Don't match < characters because that conflicts with xmledit
let delimitMate_matchpairs = "(:),[:],{:}"

" fix cursor position when expanding code
let delimitMate_expand_cr = 1

" -------------------------------------------------
" EasyMotion customizations
" -------------------------------------------------

" Remap trigger to just one leader key (instead of two)
let g:EasyMotion_leader_key = '<Leader>'

" -------------------------------------------------
" NERDTree customizations
" -------------------------------------------------

" toogle open/close NERDTree window
map <F2>  :NERDTreeToggle<CR>

" jump to current buffer (=open file) in NERDTree window
map <leader>r :NERDTreeFind<cr>

" Show hidden files by default in NERDTree
let NERDTreeShowHidden=1

" -------------------------------------------------
" YouCompleteMe & UltiSnips integration
" -------------------------------------------------

" UltiSnips completion function that tries to expand a snippet. If there's no
" snippet for expanding, it checks for completion window and if it's
" shown, selects first element. If there's no completion window it tries to
" jump to next placeholder. If there's no placeholder it just returns TAB key 

function! g:UltiSnips_Complete()
    call UltiSnips_ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips_JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
