cd %:h
let maplocalleader = " "

function Test()
    w
    silent !echo 'compiling with G++ @GNU++17'
    silent !g++ %:r.cpp -o %:r -O2 -std=gnu++17
    if (empty(glob('%:r.txt')))
        !./%:r < %:r.txt
    else
        !./%:r
    endif
endfunction

" comment out current line
noremap <localleader>c; 0xxi//<esc>
" edit inputs
noremap <localleader>e :w<cr>:e %:r.txt<cr>
" edit source codes
noremap <localleader>r :w<cr>:e %:r.cpp<cr>
" run with input file
noremap <localleader>x :call Test()<cr>
" delete target program and inputs
noremap <localleader>z :e! %:r.cpp<cr>:silent !rm %:r.txt %:r<cr><c-l>
""" abbrevs
iabbrev mian main
iabbrev ll long long
iabbrev unss using namespace std;
"" includes
iabbrev iag #include <algorithm>
iabbrev ifl #include <functional>
iabbrev ifn #include <function>
iabbrev iit #include <iterator>
" io
iabbrev iii #include <iostream>
iabbrev qio ios::sync_with_stdio(0), cin.tie(0), cout.tie(0);
iabbrev ici #include <cstdio>
iabbrev ics #include <cstring>
" containers
iabbrev ivc #include <vector>
iabbrev ils #include <list>
iabbrev imp #include <map>
iabbrev ium #include <unordered_map>
iabbrev ist #include <set>
iabbrev ius #include <unordered_set>
" read
iabbrev rdll [](){long long n; cin >> n; return n;}
iabbrev rdvc [](auto& v, int i){int j = 0; while (j < i) cin >> v[j++];}
""" inline func
iab rep <c-o>:Rep
com -nargs=* Rep call s:rep(<f-args>)
fu s:rep(...)
    let t = "for (int it = 0; it < ed; ++it) {\e"
        if a:0 == 0
        return
    elseif a:0 == 1
        let t = substitute(t, "it", "i", "g")
        let t = substitute(t, "ed", a:1, "g")
    elseif a:0 == 2
        let t = substitute(t, "it", a:1, "g")
        let t = substitute(t, "ed", a:2, "g")
    elseif a:0 == 3
        let t = substitute(t, "it", a:1, "g")
        let t = substitute(t,  "0", a:2, "g")
        let t = substitute(t, "ed", a:3, "g")
    en
    exe "norm! A".t
    exe "norm o\<space>\<BS>\e"
    star!
endf
iab rd <c-o>:Rd
com -nargs=* Rd call s:rd(<f-args>)
fu s:rd(...)
    let t = "auto x; cin >> x;\e"
    if a:0 == 2
        let t = substitute(t, "auto", a:1, "g")
        let t = substitute(t, "x",    a:2, "g")
    en
    exe "norm A".t
    exe "norm o\<space>\<bs>\e"
    star!
endf
" copy file path
noremap <localleader>p :call CopyPath()<cr>
" copy file contents
noremap <localleader>y ggVGy<c-o>

function CopyPath()
    silent !echo %:p | xsel -b
    redraw!
endfunction
