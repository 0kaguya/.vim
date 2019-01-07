" competitive programming specified shortkeys
" now it's put into /autoload/ folder but maybe altered later
"
"" competitive programming at <space>
"noremap <space>cd ggO#define debug(expr) expr<ESC><C-o>
" comment out current line
noremap <space>c; 0xxi//<esc>
" edit inputs
noremap <space>e :w<cr>:e %:r.txt<cr>
" return source codes
noremap <space>r :w<cr>:e %:r.cpp<cr>
" run with input file
noremap <space>x :w<cr>:!g++ %:r.cpp -o %:r -O2 && ./%:r < %:r.txt<cr>
" delete target program and inputs
noremap <space>z :e! %:r.cpp<cr>:silent !rm %:r.txt %:r<cr><c-l>

""" macros
iabbrev mian main
iabbrev ll long long
iabbrev unms using namespace std;
iabbrev qcin ios::sync_with_stdio(0), cin.tie(0), cout.tie(0);
"" includes
iabbrev iag #include <algorithm>
iabbrev ifl #include <functional>
iabbrev ifn #include <function>
iabbrev iit #include <iterator>
" io
iabbrev iii #include <iostream>
iabbrev ici #include <cstdio>
" containers
iabbrev ivc #include <vector>
iabbrev ils #include <list>
iabbrev imp #include <map>
iabbrev ium #include <unordered_map>
iabbrev ist #include <set>
iabbrev ius #include <unordered_set>

" read
iabbrev readll [](){long long n; cin >> n; return n;}
iabbrev readvc [](auto& v, int i){int j = 0; while (j < i) cin >> v[j++];}
