let maplocalleader = " "

cm ; <cr>

no <localleader>e :w<cr>:new %:r.txt<cr>
no <localleader>w :w<cr>
no <localleader>q :wq<cr>
no <localleader>r :w<cr>:e %<cr>
no <localleader>c :new ~/.vim/ftplugin/cpp/competitive-programming.vim<cr>
no <localleader>x :call Test()<cr>
no <localleader>z :silent !rm %:r.txt %:r &<cr><c-l>
no <localleader>n :w<cr>:e<space>
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

ia incl <c-o>:Incl 
com -nargs=1 Incl call s:include(<f-args>)
fu s:include(name)
    let t = "#include <".a:name.">"
    call append(0, t)
endf

""" abbrevs
ia mian main
ia ll long long
ia unss using namespace std;
"" includes
ia ial <c-o>:Incl algorithm
ia ifl <c-o>:Incl functional
ia ifn <c-o>:Incl function
ia iit <c-o>:Incl iterator
ia ica <c-o>:Incl cassert
" io
ia iii <c-o>:Incl iostream
ia iim <c-o>:Incl iomanip
ia qio ios::sync_with_stdio(0), cin.tie(0), cout.tie(0);
ia ici <c-o>:Incl cstdio
ia ics <c-o>:Incl cstring
" containers
ia ipr <c-o>:Incl utility
ia ivc <c-o>:call Vector()
fu Vector()
    Incl vector
    ia vec <c-o>:Vec
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
    ia pb push_back
    ia vi vector<int>
    ia vl vector<long long>
    ia vvi vector<vector<int>>
endf
ia isr <c-o>:Incl string
ia iqu <c-o>:Incl queue
ia ils <c-o>:Incl list
ia iar <c-o>:Incl array
ia imp <c-o>:Incl map
ia ium <c-o>:Incl unordered_map
ia ist <c-o>:Incl set
ia ius <c-o>:Incl unordered_set

ia star using namespace std;<cr>int main() {
ia fi }

ia rep <c-o>:Rep
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

ia rd <c-o>:Rd
com -nargs=* Rd call s:rd(<f-args>)
fu s:rd(...)
    let t = "type name; cin >> name;"
    if a:0 >= 2
        let t = substitute(t, "type", a:1, "g")
        let l = a:2
    else
        let t = substitute(t, "type", "int", "g")
        let l = a:1
    en
    let l = split(l, ",")
    let t = substitute(t, "name", join(l, ", "), "")
    let t = substitute(t, "name", join(l, " >> "), "")
    exe "norm A".t."\e"
    exe "norm o\<space>\<bs>\e"
    star!
endf

ia setn <c-o>:Maxn maxn
ia setc <c-o>:Maxn maxc
com -nargs=* Maxn call s:maxn(<f-args>)
fu s:maxn(...)
    let t = "constexpr int ".a:1." = ".a:2.";"
    call append(search("int main()", "bn", 0) - 1, t)
endf

ia iter <c-o>:Iter
com -nargs=1 Iter call s:iter(<f-args>)
fu s:iter(...)
    let t = "name.begin(), name.end()"
    let t = substitute(t, "name", a:1, "g")
    exe "norm A".t."\e"
    star!
endf

ia setp fixed << setprecision

ia func <c-o>:call Func()<cr>
fu Func()
    call search("int main()", "b")
    exe "norm k"
    star!
endf

no <localleader>p :call CopyPath()<cr>
no <localleader>y ggVGy<c-o>

fu CopyPath()
    silent !echo %:p | xsel -b
    redraw!
endf
