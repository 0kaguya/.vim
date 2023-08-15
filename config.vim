set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set noundofile
set nobackup
set backspace=indent,eol,start

set viminfo+=n~/vimfiles/viminfo

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

" leader key
let mapleader = ","

" keymaps
noremap <leader>' :term<cr>
noremap <C-j> jzz
noremap <C-k> kzz
"noremap <C-c>c :w<CR>:!g++ % -o %:h -O2<CR>
"noremap <C-c>x :!./%:h<CR>
" common operations at ','
noremap <leader>,w :w<cr>
noremap <leader>,q :q<CR>
noremap <leader>,e :e<space>
noremap <leader>,c :call CopyPath()<CR>
noremap <leader>,v ggVG
noremap <leader>,t :call Template()<CR>
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


