" basic settings:
set nocompatible
set number
filetype indent on
syntax on

" tab and autoshift:
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" highlight current line:
set cursorline
highlight CursorLine cterm=NONE
highlight CursorLineNr ctermfg=blue

" auto fcitx:
autocmd InsertLeave * let g:fcitx_tmp = system("fcitx-remote -c") " call Fcitx2en()

" vim plug:

" auto install vim-plug
if empty(glob( '~/.vim/autoload/plug.vim'))
	!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" begin plugin list:
call plug#begin()

" basic plugins:
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" syntax highlights:
Plug 'cespare/vim-toml'             " toml
Plug 'fatih/vim-go'                 " go  
Plug 'rust-lang/rust.vim'           " rust
Plug 'racer-rust/vim-racer'         " racer
Plug 'idris-hackers/idris-vim'      " idris
Plug 'neovimhaskell/haskell-vim'    " haskell

" end plugin list:
call plug#end()
