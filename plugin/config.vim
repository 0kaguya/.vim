set nocompatible
filetype plugin indent on
syntax on

" layout
set number
set cursorline
highlight CursorLine cterm=NONE
highlight CursorLineNr ctermfg=blue

" use system-wise clipboard
set clipboard=unnamedplus

" auto install vim-plug
if empty(glob( '~/.vim/autoload/plug.vim'))
	!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugin list
call plug#begin()
Plug 'tpope/vim-surround'
"Plug 'plasticboy/vim-markdown'      " markdown support
"Plug 'fatih/vim-go'                 " golang support
call plug#end()

" leader key
let mapleader = ","

" keymaps
noremap <leader>' :term<cr>
noremap <C-j> jzz
noremap <C-k> kzz
"noremap <C-c>c :w<CR>:!g++ % -o %:h -O2<CR>
"noremap <C-c>x :!./%:h<CR>
" common operations at ','
noremap <leader>,w :w %<CR>
noremap <leader>,q :q<CR>
noremap <leader>,e :e<space>
noremap <leader>,c :call common#CopyPath()<CR>
noremap <leader>,v ggVG
noremap <leader>,t :call common#Template()<CR>
" compile at 'c'
noremap <leader>cc :call Compile()<CR>
noremap <leader>cx :call QuickRun()<CR>
noremap <leader>cz :call CleanUp()<CR>
" git at 'g'
noremap <leader>ga :silent !git add %<CR><C-l>
noremap <leader>gs :!git status<CR>
noremap <leader>gc :!git commit -m<space>
noremap <leader>ge :silent !git config --edit<CR><C-l>
noremap <leader>gp :!git pull<CR>
noremap <leader>gpom :!git push origin master<CR>


function Cd()
    cd %:h
    w %
endfunction

function Clear()
    call Cd()
    silent !rm %:r
    redraw!
endfunction

function Copy()
    silent !xsel -b < %
    redraw!
endfunction

function CopyPath()
    silent !echo %:p | xsel -b
    redraw!
endfunction

function Template()
    runtime doc/template.%:e
    normal ggddG
endfunction
