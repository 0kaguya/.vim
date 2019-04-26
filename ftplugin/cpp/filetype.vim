set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

if empty(glob("%:h"))
    echom "Invalid Path"
else
    cd %:h
en


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
