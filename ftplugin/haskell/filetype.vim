set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

set wildmode=longest,list,full
set wildmenu

call plug#begin()
Plug 'neovimhaskell/haskell-vim'    " haskell support
call plug#end()

function Compile()
    w
    !ghc % -o %:r -O2
endfunction

function QuickRun()
    w
    if empty(glob('%:r'))
        !echo 'compiling with GHC'
        silent !ghc % -o %:r
    endif
    !/%:r
endfunction

function CleanUp()
    if !empty(glob('%:r.hi'))
        silent !rm %:r.hi
    endif
    if !empty(glob('%:r.o'))
        silent !rm %:r.o
    endif
    if !empty(glob('%:r'))
        silent !rm %:r
    endif
    redraw!
endfunction
