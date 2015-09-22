syntax on
set number

"" Plugins Config

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gilgigilgil/anderson.vim'

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
    set guifont=Consolas:h11:cANSI
  endif
endif

augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

"" Set color schemes

colorscheme anderson
