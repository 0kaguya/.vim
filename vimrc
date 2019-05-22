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

" julia support
Plug 'JuliaEditorSupport/julia-vim'

" racket support
Plug 'wlangstroth/vim-racket'

" racket/pie support
Plug 'felipesere/pie-highlight.vim'

" rust support
Plug 'rust-lang/rust.vim'           
Plug 'racer-rust/vim-racer'         

" toml support
Plug 'cespare/vim-toml'             

" scala support
Plug 'derekwyatt/vim-scala'

" idris support
Plug 'idris-hackers/idris-vim'      

" haskell support
Plug 'neovimhaskell/haskell-vim'    

" c++ STL highlighting
Plug 'octol/vim-cpp-enhanced-highlight' 

" coq support
Plug 'jlapolla/vim-coq-plugin'      

call plug#end()

runtime config.vim
