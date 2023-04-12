if exists("did_load_filetypes")
    finish
endif

" register .cppm as a cpp filetype
augroup filetypedetect
    au! BufRead,BufNewFile *.cppm   setfiletype cpp
augroup END

