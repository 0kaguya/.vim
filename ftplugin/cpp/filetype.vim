set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

cd %:h

call plug#begin()
Plug 'octol/vim-cpp-enhanced-highlight' " syntax highlight for c++ stl
call plug#end()

function Compile()
    w
    !g++ % -o %:r -O2 -std=gnu++17
endfunction

function QuickRun()
    w
    if empty(glob('%:r'))
        silent !echo 'compiling with G++ @gnu++17'
        silent !g++ % -o %:r -std=gnu++17
    endif
    !./%:r
endfunction

function CleanUp()
    if !empty(glob('%:r'))
        silent !rm %:r
    endif
    redraw!
endfunction

function TestWith()
    w
    if empty(glob('%:r'))
        Compile()
    endif
    !xsel -b | ./%:r
endfunction
