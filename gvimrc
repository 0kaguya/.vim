" gvim
win 120 40
set go-=m
set go-=T

if ($OS == 'Windows_NT')
    set guifont=Cascadia\ Mono:h11
endif

highlight StatusLineNC guifg=blue guibg=yellow
highlight StatusLine guifg=gray guibg=white
