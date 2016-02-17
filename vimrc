set nocompatible

syntax on
filetype plugin indent on

set exrc   " enable per-directory .vimrc files
set secure " disable unsafe commands in local .vimrc files

set expandtab shiftwidth=4 tabstop=4 colorcolumn=100
set smarttab ai nosmartindent
set nowrap ruler

" highlight tabs and trailing spaces
set listchars=tab:>-,trail:-
set list

set encoding=utf-8 fileencoding=utf-8
set nobackup nowritebackup noswapfile autoread
set relativenumber number hlsearch incsearch ignorecase smartcase
set backspace=indent,eol,start

set ignorecase incsearch smartcase showmatch showcmd hidden

set laststatus=2 " always show status bar

set wildmenu
set wildmode=longest:full,full
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,.pyc


call plug#begin('~/.vim/plugged')
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'nvie/vim-flake8'
Plug 'mattn/gist-vim'
Plug 'w0ng/vim-hybrid'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'lepture/vim-jinja'
Plug 'mattn/webapi-vim'
Plug 'kchmck/vim-coffee-script'
call plug#end()


" FILE TYPES
" ==================================================
" jinja/html
au BufNewFile,BufRead *.html setlocal ft=jinja
au BufNewFile,BufRead *.mail setlocal ft=jinja
"au FileType html setlocal foldmethod=manual

" MAPPINGS
" ==================================================
let mapleader=","

nnoremap <leader>w :set wrap<CR>
nnoremap <leader>nw :set nowrap<CR>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>l :nohlsearch<CR>
nnoremap <leader>o :CtrlPMRUFiles<CR>
nnoremap <leader>, :CtrlP<CR>
nnoremap <space><space> :w<cr>
vmap <leader>y "*y<CR>

"map <leader>ba :1,300 bd!<cr> # clears all buffers

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" move one line at a time regardless
" of wrapping
nnoremap j gj
nnoremap k gk

" move between top-level functions/classes
nmap } ]]
nmap { [[

" who wants to look up man pages from vim?
nmap K k

" It is so much fun to nuke these ones
" that I am adding them back. No arrow keys!
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
nnoremap <up>    <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

nnoremap Q <nop>
"inoremap Q <nop>

" Let Ack highlight when I search
let g:ackhighlight=1
let g:ackprg='ag --nogroup --nocolor --column'

" NERDTREE
" ==================================================
let NERDTreeIgnore=['\.pyc$']
let NERDTreeMinimalUI=1
"let NERDTreeShowHidden=1

" CTRLP
" ==================================================
let g:ctrlp_custom_ignore = 'node_modules\|.bower\|static/dst\|static/dev\|.pyc'
let g:ctrlp_working_path_mode=0
let g:ctrlp_mruf_last_entered=1
let g:ctrlp_dont_split='NERD_tree_2'

"" INDENT-GUIDES
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" FONT
" ==================================================
set guifont=M+\ 2m\ Light:h16

" COLORS
" ==================================================
"let g:solarized_contrast='high'
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
set background=light
colorscheme solarized
