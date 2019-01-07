function Compile()
    common#Cd()
    !g++ % -o %:r -O2 -std=gnu++17
endfunction

function QuickRun()
    common#Cd()
    if empty(glob('%:r'))
        !echo 'compiling with g++ @gnu++17'
        silent !g++ % -o %:r -O2 -std=gnu++17
    endif
    !./%:r
endfunction

function TestWith()
    common#Cd()
    if empty(glob('%:r'))
        Compile()
    endif
    !xsel -b | ./%:r
endfunction
