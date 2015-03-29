let g:filetype_m="objc"
let g:filetype_md="markdown"

augroup mysetting
    autocmd!
    autocmd FileType javascript :syntax keyword jsBuiltins console require module exports __filename __dirname setTimeout clearTimeout setInterval clearInterval global process of yield $
    autocmd FileType javascript :syntax keyword jsThis http https fs net os assert stream url util arguments valueOf toString prototype app express use error
    autocmd FileType javascript :highlight jsThis ctermfg=darkyellow

    au BufRead,BufNewFile *.md,*.markdown set ft=markdown
    au BufRead composer.lock set ft=json
    au BufRead,BufNewFile upstart.conf set ft=upstart
augroup END
