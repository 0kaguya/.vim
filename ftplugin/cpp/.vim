set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

call plug#begin()
Plug 'octol/vim-cpp-enhanced-highlight' " syntax highlight for c++ stl
call plug#end()

function Compile()
    Cd()
    !g++ % -o %:r -O2 -std=gnu++17
endfunction

function QuickRun()
    Cd()
    if empty(glob('%:r'))
        !echo 'compiling with G++ @gnu++17'
        silent !g++ % -o %:r -std=gnu++17
    endif
    !./%:r
endfunction

function CleanUp()
    Cd()
    if !empty(glob('%:r'))
        silent !rm %:r
    endif
    redraw!
endfunction

function TestWith()
    Cd()
    if empty(glob('%:r'))
        Compile()
    endif
    !xsel -b | ./%:r
endfunction
