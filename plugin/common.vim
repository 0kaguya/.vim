function Cd()
    cd %:h
    w %
endfunction

function Clear()
    call Cd()
    silent !rm %:r
    redraw!
endfunction

function Copy()
    silent !xsel -b < %
    redraw!
endfunction

function CopyPath()
    silent !echo %:p | xsel -b
    redraw!
endfunction

function Template()
    runtime doc/template.%:e
    normal ggddG
endfunction
