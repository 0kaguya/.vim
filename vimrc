unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set shiftwidth=4
set expandtab
set smarttab

set noundofile
set nobackup
set backspace=indent,eol,start

set viminfo+=n<sfile>:h/viminfo

set nocompatible
filetype plugin indent on
syntax on

" layout
set number
set cursorline
highlight CursorLine cterm=NONE
highlight CursorLineNr ctermfg=blue

" use system-wise clipboard
set clipboard=unnamedplus


" load package list
runtime custom.vim

