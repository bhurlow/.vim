
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

vnoremap . :norm.<CR>

" Steve Losh Style Mappings
nnoremap <space> za
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap H ^
nnoremap L $
vnoremap jk <esc>
inoremap jk <esc>
inoremap <esc> <nop>
"nnoremap ff va( 

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <leader>f va(
vnoremap <leader>a 

augroup filetype_clojure
  autocmd!
  autocmd FileType clojure setlocal foldmethod=indent
  autocmd FileType clojure nnoremap fa zM<cr>
  autocmd FileType clojure nnoremap ee zR<cr>
  " autocmd FileType clojure nnoremap <leader>a dd<cr>
augroup END

:set statusline=%f         " Path to the file
:set statusline+=%=        " Switch to the right side
:set statusline+=%l        " Current line
:set statusline+=/         " Separator
:set statusline+=%L        " Total lines

au BufRead,BufNewFile *.edn set syntax=clojure
au BufRead,BufNewFile Dockerfile set filetype=conf
au FileType edn call PareditInitBuffer()

" NO SWAP FILES

set noswapfile

" NO UNDO FILES

" set noundofile

" SET UNDO DIRECTORY

set undodir=~/.vimundo

" SYNTAX

syntax enable
syntax on

let base16colorspace=256  " Access colors present in 256 colorspace
set background=dark
"colorscheme github
" colorscheme Monokai
" colorscheme base16-ocean
" colorscheme base16-default
" colorscheme base16-railscasts
colorscheme base16-default

"let base16colorspace=256 " Access colors present in 256 colorspace
"set t_Co=256 " 256 color mode
"set background=dark
"colorscheme base16-ocean

" KEY MAPPING

" inoremap jj <ESC>
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
noremap r :RainbowParenthesesToggle<CR>

map - :Explore<CR>

" FONT
set guifont=Monaco:h12

" EMMET VIM
let g:user_emmet_expandabbr_key = '<c-e>'
" let g:user_emmet_expandabbr_key = '<Tab>'
let g:use_emmet_complete_tag = 1
let g:user_emmet_install_global = 0
autocmd FileType html,php,scss,css EmmetInstall

let b:vimpipe_command="psql if"

":inoremap ( ()<Esc>i
"inoremap { {<CR><BS>}<Esc>ko

" autocmd filetype lisp,scheme,art,clj setlocal equalprg=lispindent.lisp
" autocmd bufread,bufnewfile *.lisp,*.scm setlocal equalprg=testindent
" autocmd bufread,bufnewfile *.boob,*.scm setlocal equalprg=xmllint\ --format\ -
" autocmd bufread,bufnewfile *.boob,*.scm setlocal equalprg=ls
" autocmd filetype *.boob setlocal equalprg=ls

" because fish isn't bash compatible
if &shell =~# 'fish$'
  set shell=sh
endif

" autocmd bufread,bufnewfile *.clj setlocal equalprg=scmindent.js


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

" nnoremap H :! ag --nocolor "<C-R><C-W>"

" enable clojure jumping
let g:paredit_smartjump=1

let g:clj_fmt_autosave = 0

" let g:lispwords = 'dude,bob'

" function! ToggleLispwords(word)
"     let word = substitute(a:word, "\\v%(.*/|[#'`~@^,]*)(.*)", '\1', '')

"     if &lispwords =~# '\V\<' . word . '\>'
"         execute 'setlocal lispwords-=' . word
"         echo "Removed " . word . " from lispwords."
"     else
"         execute 'setlocal lispwords+=' . word
"         echo "Added " . word . " to lispwords."
"     endif
" endfunction

" nnoremap <Leader>l :<C-U>call ToggleLispwords(expand('<cword>'))<CR>




