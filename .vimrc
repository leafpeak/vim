" enable syntax highlighting
filetype plugin on
syntax on

source ~/.vim/.vimrc.bundles

filetype plugin indent on | syn on
"filetype plugin on

let g:solarized_termcolors=244
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
set background=dark
colorscheme solarized

set smartindent
set autoindent
set autoread
set title
set number
set ruler
"set paste
set ignorecase
set laststatus=2

" tabs
set expandtab                                               " expand tabs to spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start

set encoding=utf-8
set history=512
set incsearch
set hls!                                                    " highlight search
set list                                                    " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set wildmenu                                                " show a navigable menu for tab completion
set wildmode=longest,list,full
set autochdir
set clipboard=unnamed                                       " yank and paste with system clipboard
set noswapfile

" NERDTree config
let NERDTreeChDirMode=2

" in case you forgot to sudo
cnoremap w!! %!sudo tee > /dev/null %

" Keyboard shortcuts
let mapleader = ','
nnoremap <leader>p :set paste!<cr>
nnoremap <leader>q :q<CR>
noremap <leader>l :Align
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader><space> :call whitespace#strip_trailing()<CR>
noremap <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" ctrl-p
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 0

" indentation
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Enable basic mouse behavior such as resizing buffers.
set mouse=a
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif
