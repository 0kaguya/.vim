set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

function Compile()
    Cd()
endfunction

function QuickRun()
    Cd()
    !echo 'running with CPython' && python %
endfunction
