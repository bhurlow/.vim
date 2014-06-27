
" GENERAL

set nocompatible
execute pathogen#infect()
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent
set nu
filetype plugin indent on
let mapleader = ","
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set number
set nowrap
set textwidth=79
set formatoptions=qrn1
set pastetoggle=<leader>p

" NO SWAP FILES

set noswapfile

" NO UNDO FILES

set noundofile

" SET UNDO DIRECTORY

set undodir=~/.vimundo

" SYNTAX

syntax enable
syntax on
set background=light
colorscheme github


" KEY MAPPING

inoremap jj <ESC>
nnoremap ; :
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>ft Vatzf
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>w <C-w>v<C-w><leader>t
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
map <C-n> :NERDTreeToggle<CR>


" FONT
set guifont=Menlo:h13

" EMMET VIM
let g:user_emmet_expandabbr_key = '<c-e>'
" let g:user_emmet_expandabbr_key = '<Tab>'
let g:use_emmet_complete_tag = 1
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


":inoremap ( ()<Esc>i
"inoremap { {<CR><BS>}<Esc>ko

