let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

syntax on
set number
set nowrap
"" UTF-8 encoding required for NERDTree to function properly
set encoding=utf-8

"" Search options
set hlsearch
set incsearch
set ignorecase
set showmatch

"" Backup and swp files
set nobackup
set noswapfile

"" Visuals
set title
set visualbell
set noerrorbells

"" History
set history=1000
set undolevels=1000

"" Remap keys
nnoremap <esc> :noh<return><esc>

"" Plugins Config

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gilgigilgil/anderson.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()            " required
filetype plugin indent on    " required

"" Setting auto indent options
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set cindent
filetype indent on

"" Make backspace work like other apps
set backspace=2

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 9
  elseif has("gui_win32")
    set guifont=Consolas:h10:cANSI
  endif
endif

augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

"" Set color schemes

colorscheme anderson

"" Remove menu and tool bars from GUI
set guioptions-=T
set guioptions+=m
