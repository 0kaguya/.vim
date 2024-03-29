
"" Setting Up `vim-plug'

if empty(globpath(&rtp, 'autoload/plug.vim'))
    !git -C <sfile>:h submodule update --init
endif

call plug#begin()

" show git diff on the left side
Plug 'airblade/vim-gitgutter'

" enhanced editing for brackets and parentheses
Plug 'tpope/vim-surround'

"" lang/format support

" agda
Plug 'derekelkins/agda-vim'

" coq
Plug 'jlapolla/vim-coq-plugin'      

" cpp
Plug 'bfrg/vim-cpp-modern'

" curry
Plug 'huesersohn/curry.vim'

" erlang
Plug 'vim-erlang/vim-erlang-runtime'

" fish shell
Plug 'dag/vim-fish'

" haskell
Plug 'neovimhaskell/haskell-vim'    
Plug 'alx741/vim-hindent'

" idris
Plug 'idris-hackers/idris-vim'      

" julia
Plug 'JuliaEditorSupport/julia-vim'

" latex
Plug 'lervag/vimtex'

" nim
Plug 'zah/nim.vim'

" pie
"Plug 'felipesere/pie-highlight.vim'

" racket
Plug 'wlangstroth/vim-racket'

" rust
Plug 'rust-lang/rust.vim'           
Plug 'racer-rust/vim-racer'         

" scala
Plug 'derekwyatt/vim-scala'

" toml
Plug 'cespare/vim-toml'             

call plug#end()

" gitgutter
highlight SignColumn ctermbg=NONE
set updatetime=1000
set signcolumn=yes
