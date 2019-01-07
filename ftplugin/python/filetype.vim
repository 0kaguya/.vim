set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

cd %:h

function QuickRun()
    w
    !echo 'running with CPython' && python %
endfunction
