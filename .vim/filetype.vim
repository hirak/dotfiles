augroup mysetting
    autocmd!
    autocmd FileType javascript :syntax keyword jsBuiltins console require module exports __filename __dirname setTimeout clearTimeout setInterval clearInterval global process

    autocmd FileType javascript :syntax keyword jsThis http https fs net os assert stream url util
    autocmd FileType javascript :highlight jsThis ctermfg=darkyellow
augroup END
