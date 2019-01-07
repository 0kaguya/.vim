function Cd()
    cd %:h
    w
endfunction

function CopyPath()
    silent !echo %:p | xsel -b
    redraw!
endfunction

function Template()
    runtime doc/template.%:e
    normal ggddG
endfunction
