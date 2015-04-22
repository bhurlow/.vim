
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
filetype plugin on
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
set cmdwinheight=20

au BufRead,BufNewFile *.edn set syntax=clojure
au BufRead,BufNewFile *.edn set filetype=clojure
au FileType edn call PareditInitBuffer()

" NO SWAP FILES

set noswapfile

" NO UNDO FILES

set noundofile

" SET UNDO DIRECTORY

set undodir=~/.vimundo

" SYNTAX

syntax enable
syntax on

"set background=dark
"colorscheme github
colorscheme Monokai
"colorscheme base16-ocean

"let base16colorspace=256 " Access colors present in 256 colorspace
"set t_Co=256 " 256 color mode
"set background=dark
"colorscheme base16-ocean

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
noremap % v% 
noremap <leader>r :Require<CR>

map - :Explore<CR>

" FONT
set guifont=Menlo:h13

" EMMET VIM
let g:user_emmet_expandabbr_key = '<c-e>'
" let g:user_emmet_expandabbr_key = '<Tab>'
let g:use_emmet_complete_tag = 1
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let b:vimpipe_command="psql if"

":inoremap ( ()<Esc>i
"inoremap { {<CR><BS>}<Esc>ko

autocmd filetype lisp,scheme,art,clj setlocal equalprg=lispindent.lisp

set wildignore+=*/tmp/*,*/out/*,*/target/*,*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 'cra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|out)$'

" Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  "let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  "let g:ctrlp_use_caching = 0
endif

" bind to grep word under cursor

"nnoremap H :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

nnoremap H :! ag --nocolor "<C-R><C-W>"

" enable clojure jumping
let g:paredit_smartjump=1


let g:clj_fmt_autosave = 0
