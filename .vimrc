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

" keymap
noremap <F10> :call QuickRun()<CR>
noremap <C-z> :shell<CR>

function QuickRun()
    cd %:h
    w %
    if expand('%:e') == 'hs'
        silent !ghc % -o %:r && echo 'Compiled with GHC compiler. Done.'
        silent !while true; do ./%:r; done;
        silent !rm %:r
        redraw!
    elseif expand('%:e') == 'cpp'
        silent !g++ % -o %:r && echo 'Compiled with GNU C++ compiler on gnu++17. Done.'
        silent !while true; do ./%:r; done;
        silent !rm %:r
        redraw!
    endif
endfunction

" disable chinese input method (fcitx) when enter the normal mode
autocmd InsertLeave * let g:fcitx_tmp = system('fcitx-remote -c') " call Fcitx2en()

" vim plug: a fast, elegant plugin manager

" auto install vim-plug
if empty(glob( '~/.vim/autoload/plug.vim'))
	!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" begin plugin list:
call plug#begin()

Plug 'tpope/vim-surround'
Plug 'racer-rust/vim-racer'         " racer language server
Plug 'cespare/vim-toml'             " toml support
Plug 'plasticboy/vim-markdown'      " markdown support
"Plug 'fatih/vim-go'                 " golang support
Plug 'jlapolla/vim-coq-plugin'      " coq highlighting
Plug 'rust-lang/rust.vim'           " rust support. function with racer.
Plug 'idris-hackers/idris-vim'      " idris support
Plug 'neovimhaskell/haskell-vim'    " haskell support

" end plugin list:
call plug#end()
