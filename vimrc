" auto install vim-plug
if empty(globpath(&rtp, 'autoload/plug.vim'))
    !curl -fLo  <sfile>:h/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" show git diff on the left side
Plug 'airblade/vim-gitgutter'

" enhanced editing for brackets and parentheses
Plug 'tpope/vim-surround'

"" lang/format support

" Agda support
Plug 'derekelkins/agda-vim'

" coq
Plug 'jlapolla/vim-coq-plugin'      

" c++ STL highlighting
Plug 'octol/vim-cpp-enhanced-highlight' 

" curry
Plug 'huesersohn/curry.vim'

" erlang
Plug 'vim-erlang/vim-erlang-runtime'

" fish shell
Plug 'dag/vim-fish'

" haskell
Plug 'neovimhaskell/haskell-vim'    

" idris
Plug 'idris-hackers/idris-vim'      

" julia
Plug 'JuliaEditorSupport/julia-vim'

" nim
Plug 'zah/nim.vim'

"" pie
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

" debug vim-cpp-enhanced
syn keyword cppStructure class typename template namespace

runtime config.vim
