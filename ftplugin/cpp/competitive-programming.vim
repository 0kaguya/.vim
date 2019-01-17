cd %:h
let maplocalleader = " "

no <localleader>e :w<cr>:e %:r.txt<cr>
no <localleader>r :w<cr>:e %:r.cpp<cr>

no <localleader>x :call Test()<cr>
fu Test()
    w
    silent !echo 'compiling with G++ @GNU++17'
    silent !g++ %:r.cpp -o %:r -O2 -std=gnu++17
    if (!empty(glob('%:r.txt')))
        !./%:r < %:r.txt
    else
        !./%:r
    en
endf
no <localleader>z :e! %:r.cpp<cr>:silent !rm %:r.txt %:r<cr><c-l>

iab incl <c-o>:Incl 
com -nargs=1 Incl call s:include(<f-args>)
fu s:include(name)
    let t = "#include <".a:name.">"
    call append(0, t)
endf

""" abbrevs
iab mian main
iab ll long long
iab unss using namespace std;
"" includes
iab ial <c-o>:Incl algorithm
iab ifl <c-o>:Incl functional
iab ifn <c-o>:Incl function
iab iit <c-o>:Incl iterator
iab ica <c-o>:Incl cassert
" io
iab iii <c-o>:Incl iostream
iab iim <c-o>:Incl iomanip
iab qio ios::sync_with_stdio(0), cin.tie(0), cout.tie(0);
iab ici <c-o>:Incl cstdio
iab ics <c-o>:Incl cstring
" containers
iab ivc <c-o>:Incl vector
iab ils <c-o>:Incl list
iab imp <c-o>:Incl map
iab ium <c-o>:Incl unordered_map
iab ist <c-o>:Incl set
iab ius <c-o>:Incl unordered_set

iab star using namespace std;<cr>int main() {
iab fi }

iab rep <c-o>:Rep
com -nargs=* Rep call s:repeat(<f-args>)
fu s:repeat(...)
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
    let t = "type name; cin >> name;"
    if a:0 >= 2
        let t = substitute(t, "type", a:1, "g")
        let t = substitute(t, "name", a:2, "g")
    else
        let t = substitute(t, "type", "int", "g")
        let t = substitute(t, "name", a:1, "g")
    en
    exe "norm A".t."\e"
    exe "norm o\<space>\<bs>\e"
    star!
endf

iab setn <c-o>:Maxn maxn
iab setc <c-o>:Maxn maxc
com -nargs=* Maxn call s:maxn(<f-args>)
fu s:maxn(...)
    let t = "constexpr int ".a:1." = ".a:2.";"
    call append(search("int main()", "bn", 0) - 1, t)
endf

iab iter <c-o>:Iter
com -nargs=1 Iter call s:iter(<f-args>)
fu s:iter(...)
    let t = "name.begin(), name.end()"
    let t = substitute(t, "name", a:1, "g")
    exe "norm A".t."\e"
    star!
endf

iab vec <c-o>:Vec
com -nargs=* Vec call s:vec(<f-args>)
fu s:vec(...)
    let t = "vector<type> name(size, init);"
    if a:0 >= 4
        let t = substitute(t, "init", a:4, "g")
    else
        let t = substitute(t, ", init", "", "g")
    en
    if a:0 >= 3
        let t = substitute(t, "size", a:3, "g")
    else
        let t = substitute(t, "(size)", "", "g")
    en
    if a:0 >= 2
        let t = substitute(t, "type", a:1, "g")
        let t = substitute(t, "name", a:2, "g")
    else
        let t = substitute(t, "type", "int", "g")
        let t = substitute(t, "name", a:1, "g")
    en
    exe "norm A".t."\e"
    exe "norm o\<space>\<bs>\e"
    star!
endf

iab pb push_back
iab setp fixed << setprecision

no <localleader>p :call CopyPath()<cr>
no <localleader>y ggVGy<c-o>

fu CopyPath()
    silent !echo %:p | xsel -b
    redraw!
endf
