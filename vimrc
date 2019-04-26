" auto install vim-plug
if empty(globpath(&rtp, 'autoload/plug.vim'))
    !curl -fLo  <sfile>:h/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-surround'
Plug 'racer-rust/vim-racer'         
Plug 'rust-lang/rust.vim'           
Plug 'cespare/vim-toml'             
Plug 'derekwyatt/vim-scala'
Plug 'idris-hackers/idris-vim'      
Plug 'neovimhaskell/haskell-vim'    
Plug 'octol/vim-cpp-enhanced-highlight' 
Plug 'jlapolla/vim-coq-plugin'      
call plug#end()

runtime config.vim
